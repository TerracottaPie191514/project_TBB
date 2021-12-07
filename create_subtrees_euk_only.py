#!/usr/bin/env python
# coding: utf-8

# In[1]:


from ete3 import Tree
import csv
import os.path
import random
from ete3 import NCBITaxa
ncbi = NCBITaxa()


# In[95]:


def process_tree(tree, pfam):
    """processes a tree based on their pfams, annotates them, removes wrong annotations, filters out trees without prokaryotes, makes sure there are duplications present and writes the trees to a directory"""
    annotate(tree)
    delete_wrong_annotations(tree)
    if tree.search_nodes(prok_euk = 'Prokaryote'):
        print("Prokaryotes in tree")
        return None 
    if len(tree.search_nodes(LECA = 'RegExPlaceholder')) == 0:
        return None

    save_tree(pfam, tree)


# In[49]:


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


# In[98]:


def save_tree(pfam, tree):
    """writes the eukaryotic tree and its sequences to a directory"""
    print("WRITING FILE")
    filename = "Untitled Folder 1/" + pfam + ".nw" 
    print(filename)
    tree.write(features = ["LECA"], format=8, outfile=filename)
    seqs = []
    for leaf in tree:
        seqs.append(leaf.name)
    textfile = open("seqs", "w")
    for element in seqs:
        textfile.write(element + "\n")
    textfile.close()
    seqsname = pfam + "_seqs.txt"
    os.rename(r'./seqs',r'./%s' % seqsname)
    os.replace(r"./%s" % seqsname, "Untitled Folder 1/%s" % seqsname)


# In[100]:


def delete_wrong_annotations(tree):
    "Deletes wrongful and redundant annotations that cause issues for MCMCTree"
    for node in tree.traverse():
        if node.name != "" and not node.is_leaf() and node.name[0].isdigit():
            node.name=""
    for node in tree.traverse():
        if node.name != "" and not node.is_leaf() and node.name[0] == "U":
            node.name=""


# In[103]:


# t=Tree("../Data/Full/full_trees/PF00071_annotated_tree.nw", format=1)
# process_tree(t, "PF00071")

for file in os.listdir('../Data/Full/full_trees'):
    pfam = file.split("_")[0]
    print(pfam)
    tree = Tree( "../Data/Full/full_trees/" + file, format=1)
    process_tree(tree,pfam)



