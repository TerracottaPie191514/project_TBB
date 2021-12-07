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


# In[8]:


cat_folder = "../Data/Full/QC/QC_comparison/QC_Pfams/"
categories = os.listdir(cat_folder)
folder = "../Data/Full/QC/QC_comparison/low_ESS/"
Pfams = os.listdir(folder)
print(Pfams)

for category in categories:
    dups = get_dups(category)
    for dup in dups:
        print(dup)
        tree_file, mcmc_file = get_result_file(dup)
        if tree_file is not None:
            tree = tree_file.read().splitlines()[1]
            dup_index = find_index(tree, dup)
            print("INDEX:",dup_index)
            get_numbers(mcmc_file, dup_index, dup, category)


# In[5]:


def get_dups(category_file):
    """ Returns list of duplications for given category """
    f = open("../Data/Full/QC/QC_comparison/QC_Pfams/" + category,'r')
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
QC_2_folder = "../Data/Full/QC/QC_2/results/"
QC_8_folder = "../Data/Full/QC/QC_8/results/"

def get_result_file(dup):
    """ Returns corresponding treefile for given duplication node """
    pfam = take_first_part_name(dup)
    dup_number = take_name_pre_extension(take_duplication_name(dup))[1:]
    if os.path.exists(QC_2_folder + pfam + "_D" + dup_number):
        tree = open(QC_2_folder + pfam + "_D" + dup_number + "/run01/new.nw", "r")
        mcmc_file = str(QC_2_folder + pfam + "_D" + dup_number + "/run01/mcmc.txt")
        if None not in (tree,mcmc_file):
            return tree, mcmc_file
    elif os.path.exists(QC_2_folder + pfam + "_U" + dup_number):
        tree = open(QC_2_folder + pfam + "_U" + dup_number + "/run01/new.nw", "r")
        mcmc_file = str(QC_2_folder + pfam + "_U" + dup_number + "/run01/mcmc.txt")
        if None not in (tree,mcmc_file):
            return tree, mcmc_file
    elif os.path.exists(QC_8_folder + pfam + "_D" + dup_number):
        tree = open(QC_8_folder + pfam + "_D" + dup_number + "/run01/new.nw", "r")
        mcmc_file = str(QC_8_folder + pfam + "_D" + dup_number + "/run01/mcmc.txt")
        if None not in (tree,mcmc_file):
            return tree, mcmc_file
    elif os.path.exists(QC_8_folder + pfam + "_U" + dup_number):
        tree = open(QC_8_folder + pfam + "_U" + dup_number + "/run01/new.nw", "r")
        mcmc_file = str(QC_8_folder + pfam + "_U" + dup_number + "/run01/mcmc.txt")
        if None not in (tree,mcmc_file):
            return tree, mcmc_file
    elif os.path.exists(QC_2_folder + pfam):
        tree = open(QC_2_folder + pfam + "/run01/new.nw", "r")
        mcmc_file = str(QC_2_folder + pfam + "/run01/mcmc.txt")
        if None not in (tree,mcmc_file):
            return tree, mcmc_file
    elif os.path.exists(QC_8_folder + pfam):
        tree = open(QC_8_folder + pfam + "/run01/new.nw", "r")
        mcmc_file = str(QC_8_folder + pfam + "/run01/mcmc.txt")
        if None not in (tree,mcmc_file):
            return tree, mcmc_file
    else :
        return None


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


# In[3]:


def get_numbers(mcmc_file, dup_index, dup, category):
    """ Writes the duplication node column to the corresponding category """
    dup_index = dup_index + 1
    category_map = category.split(".")[0]
    if not os.path.exists("../Data/Results/Visualisation/" + category_map):
        os.makedirs("../Data/Results/Visualisation/" + category_map)
    output_path = "../Data/Results/Visualisation/" + category_map + "/" + dup.strip() + ".txt"
    result = subprocess.run(["./visualize.sh", mcmc_file, str(dup_index), output_path], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    print(result.stdout, result.stderr)
    

