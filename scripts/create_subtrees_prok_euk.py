#!/usr/bin/env python
# coding: utf-8

# In[2]:


from ete3 import Tree
import csv
import os.path
import random
from ete3 import NCBITaxa
ncbi = NCBITaxa()


# In[12]:


def process_tree(tree, pfam):
    """processes a tree based on their pfams, annotates them, removes wrong annotations, filters out trees without prokaryotes, splits them up by acquisition groups and writes these subtrees to a directory"""
    annotate(tree)
    delete_wrong_annotations(tree)
    if not tree.search_nodes(prok_euk = 'Prokaryote'):
        print("No Prokaryotes in tree")
        return None 
    ac_groups = get_acgroups(tree)
    for ac_group in ac_groups:
        subtree = tree.copy()
        ac_group  = subtree.search_nodes(name = ac_group.name)[0]
        process_ac_group(ac_group, subtree, pfam)

def process_ac_group(ac_group, subtree, pfam):
    """roots the main tree on a random prokaryote, processes an acquisition group within, takes a sister group and prunes the tree, roots this tree on the farthest leaf and writes subtree to a directory """
    root_random_prok(subtree)
    print(ac_group.up.name)
    if ac_group.up.name != "":
        print("AC GROUP:",ac_group.up.name)
        print("AC GROUP FIRST INDEX",ac_group.up.name[0])
        while ac_group.up.name != "" and ac_group.up.name[0] == 'U':
            ac_group = ac_group.up

    if len(subtree.search_nodes(prok_euk = 'Prokaryote')) > 1:
        lcas = get_prokaryotic_sister(ac_group, subtree)
        ancestries = []
        for lca in lcas:
            pot_ancestry = classify_sister(lca[0])
            ancestries.append(pot_ancestry)
        if ancestries[0] == ancestries[1]:
            farthest_leaf = reroot(ac_group, subtree) # Root on the farthest leaf
        else:
            order = ('Alphaproteobacteria', 'Asgard archaea', 'ABG proteobacteria', 'Asgard+TACK group', 'Betaproteobacteria', 'Gammaproteobacteria', 'TACK archaea')
            for ancestry in order:
                if ancestry in ancestries:
                    index = ancestries.index(ancestry)
                    lca_sel = lcas[index][1]
                    if index == 1:
                        root = ac_group.get_sisters()[0] # Root on the old sister
                        subtree.set_outgroup(root)
                    break
            else:
                old_sister_leaves = [leaf.name for leaf in ac_group.get_sisters()[0]]
                farthest_leaf = reroot(ac_group, subtree) # Root on the farthest leaf
    sister = get_sister(ac_group)
    prune_tree(subtree, sister, ac_group)
#     save_tree(pfam, subtree, ac_group)


# In[3]:


def annotate(tree):
    "adds annotations for prokaryotes, eukaryotes and LECAs"
    for leaf in tree:
        if leaf.name[0].isdigit():
            taxid = int(leaf.name[:leaf.name.find('.')])
            leaf.add_features(taxid = taxid, prok_euk = 'Prokaryote')
        else:
            taxid = leaf.name[0:4]
            leaf.add_features(taxid = taxid, prok_euk = 'Eukaryote')
    for node in tree.traverse('postorder'):
        if not node.name:
            pass
        else:
            if node.name[0] == "D" and node.name[1].isdigit():
                node.add_features(event = 'Duplication')
            if node.name[0] == "U" and node.name[1].isdigit():
                node.add_features(event = 'Unknown')
            if node.name[0] == "O" and node.name[2].isdigit():
                node.add_features(LECA = 'RegExPlaceholder')


# In[4]:


def get_acgroups(tree):
    """returns a list of acquisition groups per given tree"""
    ac_groups = []
    for node in tree.traverse():
        if is_acgroup_name(node.name):
            ac_groups.append(node)
    return ac_groups

def is_acgroup_name(name):
    """determines whether a node is an acquisition group or not"""
    if name:
        return name[0] == "D" and name[1].isdigit() and "." in name and name.split(".")[1] == "1"  
    else:
        return False


# In[5]:


def root_random_prok(subtree):
    """roots the tree on a random prokaryote"""
    root = random.choice(subtree.search_nodes(prok_euk = 'Prokaryote')) # Root on random prokaryotic sequence
    subtree.set_outgroup(root)


# In[6]:


def get_prokaryotic_sister(euk_clade, tree):
    """Determines both possible prokaryotic sister groups in an unrooted way or a rooted way using the rooting on the farthest leaf"""
    sister = euk_clade.get_sisters() # Should be checked if there are any eukaryotic sequences in the sister group
    if len(sister) == 1:
        prok_leaves_sister = sister[0].search_nodes(prok_euk = 'Prokaryote')
    else: # In case of multifurcation: take all sisters (written out for clarity, but does not have to be split between bifurcating and multifurcating)
        prok_leaves_sister = []
        for sis in sister:
            prok_leaves_sister.extend(sis.search_nodes(prok_euk = 'Prokaryote'))
    other_prok_leaves = set(tree.search_nodes(prok_euk = 'Prokaryote')) - set(prok_leaves_sister)
    lcas = []
    for i, group in enumerate([prok_leaves_sister, other_prok_leaves]):
        prok_taxids = []
        for prok in group: # Collect tax ids of prokaryotic sister leaves
            prok_taxids.append(prok.taxid)
        sp_tree = ncbi.get_topology(prok_taxids) # Get NCBI species tree, to get the identity of the LCA
        lca = sp_tree.taxid
        if lca == 1224: # Proteobacteria
            for proteo in sp_tree:
                lineage = ncbi.get_lineage(proteo.name)
                if not 28211 in lineage and not 1236 in lineage and not 28216 in lineage: # So, not an alpha/gamma/beta
                    lca_name = 'Proteobacteria'
                    break
            else: # So, only alpha/beta/gamma proteobacteria
                lca = 'abgprot'
                lca_name = 'ABG proteobacteria'
        elif lca == 2157: # Archaea
            for arch in sp_tree:
                lineage = ncbi.get_lineage(arch.name)
                if not 1935183 in lineage and not 1783275 in lineage: # So, not an Asgard or TACK
                    lca_name = 'Archaea'
                    break
            else: # So, only Asgards + TACK
                lca = 'asgtack'
                lca_name = 'Asgard+TACK group'
        else:
            lca_name = ncbi.translate_to_names([lca])[0]
        lcas.append((lca, lca_name))
    return lcas

def classify_sister(lca): # Added alpha/beta/gamma proteo superclass and TACK+Asgard supersuperphylum
    """Classifies the prokaryotic sister-group"""
    if lca == 'abgprot':
        return 'ABG proteobacteria'
    elif lca == 'asgtack':
        return 'Asgard+TACK group'
    ancestors = ncbi.get_lineage(lca)
    if 28211 in ancestors:
        return 'Alphaproteobacteria'
    elif 1935183 in ancestors:
        return 'Asgard archaea'
    elif 28216 in ancestors:
        return 'Betaproteobacteria'
    elif 1236 in ancestors:
        return 'Gammaproteobacteria'
    elif 1783275 in ancestors:
        return 'TACK archaea'
    else:
        desired = 'phylum'
        if 1224 in ancestors:
            desired = 'class'
        ranks = ncbi.get_rank(ancestors)
        names = ncbi.get_taxid_translator(ancestors)
        for taxon in ranks: # Return phylum and if that is not present, then lowest group
            if ranks[taxon] == desired:
                return names[taxon]
        else:
            return names[ancestors[-1]]
        
def reroot(euk_clade, tree):
    """Reroots the tree on the farthest leaf from the eukaryotic clade"""
    tree.set_outgroup(euk_clade) # Root on this eukaryotic clade
    sister = euk_clade.get_sisters()[0]
    farthest = sister.get_farthest_leaf()[0]
    tree.set_outgroup(farthest) # Root on the leaf farthest from this eukaryotic clade (can be a false positive for example)
    return farthest.name


# In[7]:


def get_sister(ac_group):
    """takes the sistergroup to the acquisition node, checks whether this contains prokaryotes, then takes up to five organisms from it"""
    sister_list = []
    sister_group = ac_group.get_sisters()[0]
    prok_sister_leaves = sister_group.search_nodes(prok_euk = 'Prokaryote')
    sister_group = prok_sister_leaves
    for leaf in sister_group:
        sister_list.append(leaf)
    sister_list = sister_list[:5]
    return sister_list


# In[8]:


def prune_tree(subtree, sister_list, ac_group):
    """prunes a copy of the main tree by the given acquisition and sister group"""
    keep_sequences = sister_list
    for leaf in ac_group.get_leaves():
          keep_sequences.append(leaf)
    subtree.prune(keep_sequences)


# In[9]:


def root_farthest_leaf(subtree, ac_group): #TODO: make sure it only roots on the sister group
    "roots the subtree on the farthest leaf from the node of the acquisition group"
    farthest_leaf = subtree.get_farthest_leaf(ac_group)
    subtree.set_outgroup(farthest_leaf[0])
    
#     root on sister group


# In[10]:


def save_tree(pfam, subtree, ac_group):
    "writes the subtree and its sequences to a directory"
    print("WRITING FILE")
    name = ac_group.name.split(".")[0]
    filename = "Untitled Folder/" + pfam + "_" + name + ".nw" 
    print(filename)
    subtree.write(features = ["LECA"], format=8, outfile=filename)
    seqs = []
    for leaf in subtree:
        seqs.append(leaf.name)
    textfile = open("seqs", "w")
    for element in seqs:
        textfile.write(element + "\n")
    textfile.close()
    seqsname = pfam + "_" + name + "_seqs.txt"
    os.rename(r'./seqs',r'./%s' % seqsname)
    os.replace(r"./%s" % seqsname, "Untitled Folder/%s" % seqsname)


# In[11]:


def delete_wrong_annotations(tree):
    "Deletes wrongful annotations combining different leaves that cause issues for MCMCTree"
    for node in tree.traverse():
        if node.name != "" and not node.is_leaf() and node.name[0].isdigit():
            node.name=""


# In[66]:


# t=Tree("../Data/Full/full_trees/PF00071_annotated_tree.nw", format=1)
# process_tree(t, "PF00071")

for file in os.listdir('../Data/Full/full_trees'):
    pfam = file.split("_")[0]
    print(pfam)
    tree = Tree( "../Data/Full/full_trees/" + file, format=1)
    process_tree(tree,pfam)




# In[11]:


t=Tree("../Data/Full/full_trees/PF00071_annotated_tree.nw", format=1)
i = 0
for leaf in t:
    i = i + 1
    if t.search_nodes(event = 'Duplication'):
        print(i)

