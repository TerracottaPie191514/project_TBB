# Timing duplication events during eukaryogenesis
The [scripts](scripts) in this repository prepare fasta files and eukaryogenesis related annotated phylogenetic trees which contain duplications to then perform the Bayesian estimation program MCMCTree[^1].
### Tree pruning
Scripts that subset the given trees into [both prokaryotic and eukaryotic subsets](scripts/create_subtrees_prok_euk.ipynb) and [just eukaryotic subsets](scripts/create_subtrees_euk_only.ipynb) are provided. The former as compared to the latter also roots the tree on a random prokaryote, determines the best sister group, adding up to five sequences and reroots the tree on the farthest leaf from the eukaryotes. In addition, wrongful annotations are filtered out, LECA nodes are annotated and the subtrees are saved.
### MCMCTree
An MCMCTree [control file](MCMCTree.ctl) is set to work on protein data with an approximate likelihood calculation. An [empirical rate matrix with Gamma rates among sites](wag.dat) is utilized. A relaxed independent clock with a rootage of 4500 Myr is used. Other parameters are set to default for the main portion of the analysis.
### Pipeline
After tree pruning, a [script](scripts/prep.sh) prepares the tree files for use of MCMCTree. It filters out interfering node names, sets the constraints for the LECA nodes and subsets the large fastafiles into sequences relevant for the subtrees. These subsets are aligned with MAFFT L-INS-i[^2] and trimmed by trimAl[^3].
Another [script](scripts/run_MCMCTree.sh) performs MCMCTree twice by calling mcmctree and codeml and editing the control file to its necessary settings. 
A final [script](scripts/run_MCMCTree.py) combines the former two scripts, performing it on multiple protein families, spread over multiple threads.
### References
[^1]: Yang, Z. (2007). PAML 4: phylogenetic analysis by maximum likelihood. Molecular biology and evolution, 24(8), 1586-1591.
[^2]: Katoh, K., & Standley, D. M. (2013). MAFFT multiple sequence alignment software version 7: improvements in performance and usability. Molecular biology and evolution, 30(4), 772-780.
[^3] Capella-Gutiérrez, S., Silla-Martínez, J. M., & Gabaldón, T. (2009). trimAl: a tool for automated alignment trimming in large-scale phylogenetic analyses. Bioinformatics, 25(15), 1972-1973.
