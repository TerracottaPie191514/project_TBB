library(ggplot2)
library(dplyr)
library(reshape2)
library(magrittr)
library(tidyr)
library(purrr)
library(ggridges)
library(forcats)


ABG_proteobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/ABG_proteobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  ABG_proteobacteria = append(ABG_proteobacteria, Pfam)
}


Acidobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Acidobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Acidobacteria = append(Acidobacteria, Pfam)
}

Actinobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Actinobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Actinobacteria = append(Actinobacteria, Pfam)
}

Alphaproteobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Alphaproteobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Alphaproteobacteria = append(Alphaproteobacteria, Pfam)
}

Aquificae = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Aquificae/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Aquificae = append(Aquificae, Pfam)
}

Archaea = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Archaea/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Archaea = append(Archaea, Pfam)
}

Asgard_archaea = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Asgard_archaea/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Asgard_archaea = append(Asgard_archaea, Pfam)
}

Asgard_archaea_TACK = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Asgard_archaea_TACK/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Asgard_archaea_TACK = append(Asgard_archaea_TACK, Pfam)
}

Bacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Bacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Bacteria = append(Bacteria, Pfam)
}

Bacteroidetes = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Bacteroidetes/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Bacteroidetes = append(Bacteroidetes, Pfam)
}

Betaproteobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Betaproteobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Betaproteobacteria = append(Betaproteobacteria, Pfam)
}

cellular_organisms = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/cellular_organisms/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  cellular_organisms = append(cellular_organisms, Pfam)
}

Chlamydiae = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Chlamydiae/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Chlamydiae = append(Chlamydiae, Pfam)
}

Chlorobi = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Chlorobi/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Chlorobi = append(Chlorobi, Pfam)
}

Chloroflexi = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Chloroflexi/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Chloroflexi = append(Chloroflexi, Pfam)
}

Cyanobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Cyanobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Cyanobacteria = append(Cyanobacteria, Pfam)
}

Deferribacteres = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Deferribacteres/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Deferribacteres = append(Deferribacteres, Pfam)
}

Deinococcus_Thermus = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Deinococcus-Thermus/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Deinococcus_Thermus = append(Deinococcus_Thermus, Pfam)
}

Deltaproteobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Deltaproteobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Deltaproteobacteria = append(Deltaproteobacteria, Pfam)
}

Epsilonproteobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Epsilonproteobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Epsilonproteobacteria = append(Epsilonproteobacteria, Pfam)
}

Eukaryotic = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Eukaryotic/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Eukaryotic = append(Eukaryotic, Pfam)
}

Euryarchaeota = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Euryarchaeota/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Euryarchaeota = append(Euryarchaeota, Pfam)
}

FCB = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/FCB/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  FCB = append(FCB, Pfam)
}

Fibrobacteres = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Fibrobacteres/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Fibrobacteres = append(Fibrobacteres, Pfam)
}

Firmicutes = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Firmicutes/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Firmicutes = append(Firmicutes, Pfam)
}

Fusobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Fusobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Fusobacteria = append(Fusobacteria, Pfam)
}

Gammaproteobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Gammaproteobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Gammaproteobacteria = append(Gammaproteobacteria, Pfam)
}

Lentisphaerae = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Lentisphaerae/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Lentisphaerae = append(Lentisphaerae, Pfam)
}

Nanoarchaeota = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Nanoarchaeota/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Nanoarchaeota = append(Nanoarchaeota, Pfam)
}

Oligoflexia = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Oligoflexia/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Oligoflexia = append(Oligoflexia, Pfam)
}

Planctomycetes = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Planctomycetes/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Planctomycetes = append(Planctomycetes, Pfam)
}

Proteobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Proteobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Proteobacteria = append(Proteobacteria, Pfam)
}

PVC = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/PVC/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  PVC = append(PVC, Pfam)
}

SDD_17B = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/SDD-17B/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  SDD_17B = append(SDD_17B, Pfam)
}

Spirochaetes = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Spirochaetes/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Spirochaetes = append(Spirochaetes, Pfam)
}

TACK_archaea = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/TACK_archaea/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  TACK_archaea = append(TACK_archaea, Pfam)
}

Tenericutes = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Tenericutes/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Tenericutes = append(Tenericutes, Pfam)
}

Terrabacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Terrabacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Terrabacteria = append(Terrabacteria, Pfam)
}

Verrucomicrobia = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Verrucomicrobia/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Verrucomicrobia = append(Verrucomicrobia, Pfam)
}

Zetaproteobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Zetaproteobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  Zetaproteobacteria = append(Zetaproteobacteria, Pfam)
}



Asgard_archaeal = c(Asgard_archaea, Asgard_archaea_TACK)
Archaeal_other = c(Archaea, Euryarchaeota, Nanoarchaeota, TACK_archaea)
Bacterial = c(ABG_proteobacteria,Acidobacteria,Actinobacteria,Alphaproteobacteria,Aquificae,Bacteria,Bacteroidetes,Betaproteobacteria,
              Chlamydiae, Chlorobi,Chloroflexi,Cyanobacteria,Deferribacteres,Deinococcus_Thermus,Deltaproteobacteria,Deltaproteobacteria,
              Epsilonproteobacteria, FCB, Fibrobacteres, Firmicutes, Fusobacteria, Gammaproteobacteria, Lentisphaerae,Oligoflexia,
              Planctomycetes, Proteobacteria, PVC,SDD_17B,Tenericutes,Terrabacteria,Verrucomicrobia,Zetaproteobacteria)




max_length <- max(c(length(Bacterial), length(Eukaryotic))) 
print(max_length)


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


max_length <- max(c(length(Acidobacteria), length(Deltaproteobacteria))) 

data %<>% gather(key = event, value= age)

data$event <- gsub('\\.', ' ', data$event)

median_na_rm <- function(x) {
  x <- median(x, na.rm = TRUE)
  return(x)
}



ggplot(data, aes(age, y = fct_reorder(event, age,  .fun = median_na_rm, .desc = TRUE), fill = event)) + 
  geom_density_ridges(scale = 2) +
  coord_cartesian(xlim = c(50, 20)) +
  scale_x_reverse() + 
  scale_fill_manual(name = "category",
                    values = c("Bacterial" = "#ff7d00", "Asgard archaeal" = "#339e2b", "Prokaryotic" = "#683a99", "Archaeal" = "#1e78b3", "Alphaproteobacterial" = "#e31919", "Eukaryotic" = "#b05726"),
                    guide = "legend") + 
  theme_bw() +
  theme(axis.title.y=element_blank()) + 
  labs(title = "Timing of duplication events during eukaryogenesis by sister group", x = "Age in 100 Myr")






  
give_broader_cat <- function(subcategory) {
  Asgard_archaeal = c('Asgard_archaea','Asgard_archaea_TACK')
  Archaeal_other = c('Archaea', 'Euryarchaeota', 'Nanoarchaeota', 'TACK_archaea')
  Eukaryotic = c('Eukaryotic')
  Alphaproteobacterial = c('Alphaproteobacteria')
  cellular = c('cellular_organisms')
  if(subcategory %in% Asgard_archaeal) {return("Asgard archaeal")} 
  else if(subcategory %in% Prokaryotic) {return("Prokaryotic")}
  else if(subcategory %in% Archaeal_other) {return("Archaeal")}
  else if(subcategory %in% Eukaryotic) {return("Eukaryotic")}
  else if(subcategory %in% Alphaproteobacterial) {return("Alphaproteobacterial")}
  else if(subcategory %in% cellular) {return("Cellular organisms")}
  else {return("Bacterial")}
}


data %<>% select(event, age) %>% mutate(cat = unlist(map(event,give_broader_cat)))

saveRDS(data, file = "sister_data.RDS")


ggplot(data, aes(age, event, fill = as.factor(cat))) + 
  geom_density_ridges(scale = 2) +
  scale_x_reverse() + 
  scale_fill_manual(name = "category",
                    values = c("#b05726", "#683a99", "#e31919", "#ff7d00", "#339e2b", "#1e78b3", "#fa9999", '#ffff33'),
                    #labels = c(Metabolism = "#33a02c", "Information storage and processing" = "#1f78b4", "Cellular Processes and signaling" = "#e31a1c"),
                    guide = "legend") + 
  theme_bw() +
  theme(axis.title.y=element_blank()) + 
  labs(title = "Timing of duplication events per COG", x = "Age in 100 Myr")



data <- data.frame('ABG_proteobacteria' = c(ABG_proteobacteria,                 # Create data frame with unequal vectors
                                            rep(NA, max_length - length(ABG_proteobacteria))),
                   'Acidobacteria' = c(Acidobacteria,
                                       rep(NA, max_length - length(Acidobacteria))),
                   'Actinobacteria' = c(Actinobacteria,
                                        rep(NA, max_length - length(Actinobacteria))),
                   'Alphaproteobacteria' = c(Alphaproteobacteria,
                                             rep(NA, max_length - length(Alphaproteobacteria))),
                   'Aquificae' = c(Aquificae,
                                   rep(NA, max_length - length(Aquificae))),
                   'Archaea' = c(Archaea,
                                 rep(NA, max_length - length(Archaea))),
                   'Asgard_archaea' = c(Asgard_archaea,
                                        rep(NA, max_length - length(Asgard_archaea))),
                   'Asgard_archaea_TACK' = c(Asgard_archaea_TACK,
                                             rep(NA, max_length - length(Asgard_archaea_TACK))),
                   'Bacteria' = c(Bacteria,
                                  rep(NA, max_length - length(Bacteria))),
                   'Bacteroidetes' = c(Bacteroidetes,
                                       rep(NA, max_length - length(Bacteroidetes))),
                   'Betaproteobacteria' = c(Betaproteobacteria,
                                            rep(NA, max_length - length(Betaproteobacteria))),
                   'cellular_organisms' = c(cellular_organisms,
                                            rep(NA, max_length - length(cellular_organisms))),
                   'Chlamydiae' = c(Chlamydiae,
                                    rep(NA, max_length - length(Chlamydiae))),
                   'Chlorobi' = c(Chlorobi,
                                  rep(NA, max_length - length(Chlorobi))),
                   'Chloroflexi' = c(Chloroflexi,
                                     rep(NA, max_length - length(Chloroflexi))),
                   'Cyanobacteria' = c(Cyanobacteria,
                                       rep(NA, max_length - length(Cyanobacteria))),
                   'Deferribacteres' = c(Deferribacteres,
                                         rep(NA, max_length - length(Deferribacteres))),
                   'Deinococcus_Thermus' = c(Deinococcus_Thermus,
                                             rep(NA, max_length - length(Deinococcus_Thermus))),
                   'Deltaproteobacteria' = c(Deltaproteobacteria,
                                             rep(NA, max_length - length(Deltaproteobacteria))),
                   'Epsilonproteobacteria' = c(Epsilonproteobacteria,
                                               rep(NA, max_length - length(Epsilonproteobacteria))),
                   'Eukaryotic' = c(Eukaryotic,
                                    rep(NA, max_length - length(Eukaryotic))),
                   'Euryarchaeota' = c(Euryarchaeota,
                                       rep(NA, max_length - length(Euryarchaeota))),
                   'FCB' = c(FCB,
                             rep(NA, max_length - length(FCB))),
                   'Fibrobacteres' = c(Fibrobacteres,
                                       rep(NA, max_length - length(Fibrobacteres))),
                   'Firmicutes' = c(Firmicutes,
                                    rep(NA, max_length - length(Firmicutes))),
                   'Fusobacteria' = c(Fusobacteria,
                                      rep(NA, max_length - length(Fusobacteria))),
                   'Gammaproteobacteria' = c(Gammaproteobacteria,
                                             rep(NA, max_length - length(Gammaproteobacteria))),
                   'Lentisphaerae' = c(Lentisphaerae,
                                       rep(NA, max_length - length(Lentisphaerae))),
                   'Nanoarchaeota' = c(Nanoarchaeota,
                                       rep(NA, max_length - length(Nanoarchaeota))),
                   'Oligoflexia' = c(Oligoflexia,
                                     rep(NA, max_length - length(Oligoflexia))),
                   'Planctomycetes' = c(Planctomycetes,
                                        rep(NA, max_length - length(Planctomycetes))),
                   'Proteobacteria' = c(Proteobacteria,
                                        rep(NA, max_length - length(Proteobacteria))),
                   'PVC' = c(PVC,
                             rep(NA, max_length - length(PVC))),
                   'SDD_17B' = c(SDD_17B,
                                 rep(NA, max_length - length(SDD_17B))),
                   'TACK_archaea' = c(TACK_archaea,
                                      rep(NA, max_length - length(TACK_archaea))),
                   'Tenericutes' = c(Tenericutes,
                                     rep(NA, max_length - length(Tenericutes))),
                   'Terrabacteria' = c(Terrabacteria,
                                       rep(NA, max_length - length(Terrabacteria))),
                   'Verrucomicrobia' = c(Verrucomicrobia,
                                         rep(NA, max_length - length(Verrucomicrobia))),
                   'Zetaproteobacteria' = c(Zetaproteobacteria,
                                            rep(NA, max_length - length(Zetaproteobacteria))))