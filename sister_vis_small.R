library(ggplot2)
library(dplyr)
library(reshape2)
library(magrittr)
library(tidyr)
library(purrr)
library(ggridges)
library(forcats)


ABG_proteobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/ABG_proteobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  ABG_proteobacteria = append(ABG_proteobacteria, Pfam[-(1:2000)])
}


Acidobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Acidobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Acidobacteria = append(Acidobacteria, Pfam[-(1:2000)])
}

Actinobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Actinobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Actinobacteria = append(Actinobacteria, Pfam[-(1:2000)])
}

Alphaproteobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Alphaproteobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Alphaproteobacteria = append(Alphaproteobacteria, Pfam[-(1:2000)])
}

Aquificae = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Aquificae/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Aquificae = append(Aquificae, Pfam[-(1:2000)])
}

Archaea = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Archaea/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Archaea = append(Archaea, Pfam[-(1:2000)])
}

Asgard_archaea = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Asgard_archaea/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Asgard_archaea = append(Asgard_archaea, Pfam[-(1:2000)])
}

Asgard_archaea_TACK = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Asgard_archaea_TACK/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Asgard_archaea_TACK = append(Asgard_archaea_TACK, Pfam[-(1:2000)])
}

Bacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Bacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Bacteria = append(Bacteria, Pfam[-(1:2000)])
}

Bacteroidetes = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Bacteroidetes/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Bacteroidetes = append(Bacteroidetes, Pfam[-(1:2000)])
}

Betaproteobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Betaproteobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Betaproteobacteria = append(Betaproteobacteria, Pfam[-(1:2000)])
}

cellular_organisms = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/cellular_organisms/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  cellular_organisms = append(cellular_organisms, Pfam[-(1:2000)])
}

Chlamydiae = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Chlamydiae/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Chlamydiae = append(Chlamydiae, Pfam[-(1:2000)])
}

Chlorobi = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Chlorobi/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Chlorobi = append(Chlorobi, Pfam[-(1:2000)])
}

Chloroflexi = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Chloroflexi/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Chloroflexi = append(Chloroflexi, Pfam[-(1:2000)])
}

Cyanobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Cyanobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Cyanobacteria = append(Cyanobacteria, Pfam[-(1:2000)])
}

Deferribacteres = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Deferribacteres/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Deferribacteres = append(Deferribacteres, Pfam[-(1:2000)])
}

Deinococcus_Thermus = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Deinococcus-Thermus/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Deinococcus_Thermus = append(Deinococcus_Thermus, Pfam[-(1:2000)])
}

Deltaproteobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Deltaproteobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Deltaproteobacteria = append(Deltaproteobacteria, Pfam[-(1:2000)])
}

Epsilonproteobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Epsilonproteobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Epsilonproteobacteria = append(Epsilonproteobacteria, Pfam[-(1:2000)])
}

Eukaryotic = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Eukaryotic/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Eukaryotic = append(Eukaryotic, Pfam[-(1:2000)])
}

Euryarchaeota = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Euryarchaeota/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Euryarchaeota = append(Euryarchaeota, Pfam[-(1:2000)])
}

FCB = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/FCB/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  FCB = append(FCB, Pfam[-(1:2000)])
}

Fibrobacteres = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Fibrobacteres/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Fibrobacteres = append(Fibrobacteres, Pfam[-(1:2000)])
}

Firmicutes = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Firmicutes/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Firmicutes = append(Firmicutes, Pfam[-(1:2000)])
}

Fusobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Fusobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Fusobacteria = append(Fusobacteria, Pfam[-(1:2000)])
}

Gammaproteobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Gammaproteobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Gammaproteobacteria = append(Gammaproteobacteria, Pfam[-(1:2000)])
}

Lentisphaerae = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Lentisphaerae/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Lentisphaerae = append(Lentisphaerae, Pfam[-(1:2000)])
}

Nanoarchaeota = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Nanoarchaeota/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Nanoarchaeota = append(Nanoarchaeota, Pfam[-(1:2000)])
}

Oligoflexia = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Oligoflexia/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Oligoflexia = append(Oligoflexia, Pfam[-(1:2000)])
}

Planctomycetes = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Planctomycetes/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Planctomycetes = append(Planctomycetes, Pfam[-(1:2000)])
}

Proteobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Proteobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Proteobacteria = append(Proteobacteria, Pfam[-(1:2000)])
}

PVC = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/PVC/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  PVC = append(PVC, Pfam[-(1:2000)])
}

SDD_17B = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/SDD-17B/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  SDD_17B = append(SDD_17B, Pfam[-(1:2000)])
}

Spirochaetes = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Spirochaetes/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Spirochaetes = append(Spirochaetes, Pfam[-(1:2000)])
}

TACK_archaea = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/TACK_archaea/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  TACK_archaea = append(TACK_archaea, Pfam[-(1:2000)])
}

Tenericutes = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Tenericutes/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Tenericutes = append(Tenericutes, Pfam[-(1:2000)])
}

Terrabacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Terrabacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Terrabacteria = append(Terrabacteria, Pfam[-(1:2000)])
}

Verrucomicrobia = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Verrucomicrobia/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Verrucomicrobia = append(Verrucomicrobia, Pfam[-(1:2000)])
}

Zetaproteobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/Sister_small/Zetaproteobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Zetaproteobacteria = append(Zetaproteobacteria, Pfam[-(1:2000)])
}



Asgard_archaeal = c(Asgard_archaea, Asgard_archaea_TACK)
Archaeal_other = c(Archaea, Euryarchaeota, Nanoarchaeota, TACK_archaea)
Bacterial = c(ABG_proteobacteria,Acidobacteria,Actinobacteria,Alphaproteobacteria,Aquificae,Bacteria,Bacteroidetes,Betaproteobacteria,
              Chlamydiae, Chlorobi,Chloroflexi,Cyanobacteria,Deferribacteres,Deinococcus_Thermus,Deltaproteobacteria,Deltaproteobacteria,
              Epsilonproteobacteria, FCB, Fibrobacteres, Firmicutes, Fusobacteria, Gammaproteobacteria, Lentisphaerae,Oligoflexia,
              Planctomycetes, Proteobacteria, PVC,SDD_17B,Tenericutes,Terrabacteria,Verrucomicrobia,Zetaproteobacteria)




max_length <- max(c(length(Bacterial), length(Eukaryotic))) 


data <- data.frame('Asgard archaeal' = c(Asgard_archaeal,
                                         rep(NA, max_length - length(Asgard_archaeal))),
                   'Bacterial' = c(Bacterial,
                                   rep(NA, max_length - length(Bacterial))),
                   'Prokaryotic' = c(cellular_organisms,
                                     rep(NA, max_length - length(cellular_organisms))),
                   'Eukaryotic' = c(Eukaryotic,
                                    rep(NA, max_length - length(Eukaryotic))),
                   'Archaeal' = c(Archaeal_other,
                                  rep(NA, max_length - length(Archaeal_other))),
                   'Alphaproteobacterial' = c(Alphaproteobacteria,
                                              rep(NA, max_length - length(Alphaproteobacteria))))


data %<>% gather(key = event, value= age)

data$event <- gsub('\\.', ' ', data$event)


ggplot(data, aes(age, y = fct_reorder(event, age), fill = event)) + 
  geom_density_ridges(scale = 2) +
  coord_cartesian(xlim = c(50, 20)) +
  scale_x_reverse() + 
  scale_fill_manual(name = "category",
                    values = c("#ff7d00", "#339e2b", "#683a99", "#1e78b3", "#e31919", "#b05726"),
                    guide = "legend") + 
  theme_bw() +
  theme(axis.title.y=element_blank()) + 
  labs(title = "Timing of duplication events per sister group (small trees)", x = "Age in 100 Myr")

