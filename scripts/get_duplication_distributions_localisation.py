#!/usr/bin/env python
# coding: utf-8

# In[1]:


from ete3 import Tree
import os.path
import sys
import random
from ete3 import NCBITaxa
ncbi = NCBITaxa()
import subprocess


# In[11]:


cat_folder = "../Data/Categories/Localisation/"
categories = os.listdir(cat_folder)

for category in categories:
    print(category)
    dups = get_dups(category)
    for dup in dups:
        print(dup)
        tree_file, mcmc_file = get_result_file(dup)
        if tree_file is not None:
            tree = tree_file.read().splitlines()[1]
            dup_index = find_index(tree, dup)
            print("INDEX:",dup_index)
            get_numbers(mcmc_file, dup_index, dup, category)


# In[2]:


def get_dups(category_file):
    """ Returns list of duplications for given category """
    f = open("../Data/Categories/Localisation/" + category, 'r')
    dups = f.readlines()
    return dups


# In[7]:


def take_duplication_name(file):
    split = file.split("_")
    return split[1]
def take_first_part_name(file):
    split = file.split("_")
    return split[0]
def take_name_pre_extension(file):
    split = file.split(".")
    return split[0]

    for extension in try_extensions:
        tree_file = "../Data/Full/Trees/" + pfam + extension
        if os.path.exists(tree_file):
            return Tree(tree_file, format=1)
prok_euk_folder = "../Data/Results/prok_euk/MCMCTree_runs/"
euk_only_folder = "../Data/Results/euk_only/MCMCTree_runs/"

def get_result_file(dup):
    """ Returns corresponding treefile for given duplication node """
    pfam = take_first_part_name(dup)
    dup_number = take_name_pre_extension(take_duplication_name(dup))[1:]
    if os.path.exists(prok_euk_folder + pfam + "_D" + dup_number):
        tree = open(prok_euk_folder + pfam + "_D" + dup_number + "/run01/new.nw", "r")
        mcmc_file = str(prok_euk_folder + pfam + "_D" + dup_number + "/run01/mcmc.txt")
        if None not in (tree,mcmc_file):
            return tree, mcmc_file
    elif os.path.exists(prok_euk_folder + pfam + "_U" + dup_number):
        tree = open(prok_euk_folder + pfam + "_U" + dup_number + "/run01/new.nw", "r")
        mcmc_file = str(prok_euk_folder + pfam + "_U" + dup_number + "/run01/mcmc.txt")
        if None not in (tree,mcmc_file):
            return tree, mcmc_file
    elif os.path.exists(euk_only_folder + pfam):
        tree = open(euk_only_folder + pfam + "/run01/new.nw", "r")
        mcmc_file = str(euk_only_folder + pfam + "/run01/mcmc.txt")
        if None not in (tree,mcmc_file):
            return tree, mcmc_file
    else :
        return None, None


# In[4]:


def find_index(tree, dup):
    """ Finds the index of the duplication node """
    t=Tree(tree, format = 1)
    i = 0
    for node in t.traverse("preorder"):
        if not node.is_leaf():
            i = i + 1
        if node.name == str(take_duplication_name(dup).strip()):
            dup_index = i
    try:
        dup_index
    except NameError:
        var_exists = False
        dup_index = 1
    else:
        var_exists = True
    return dup_index


# In[9]:


def get_numbers(mcmc_file, dup_index, dup, category):
    """ Writes the duplication node column to the corresponding category """
    dup_index = dup_index + 1
    category_map = category.split(".")[0]
    if not os.path.exists("../Data/Results/Visualisation/Localisation/" + category_map):
        os.makedirs("../Data/Results/Visualisation/Localisation/" + category_map)
    output_path = "../Data/Results/Visualisation/Localisation/" + category_map + "/" + dup.strip() + ".txt"
    result = subprocess.run(["./visualize.sh", mcmc_file, str(dup_index), output_path], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    print(result.stdout, result.stderr)
    

