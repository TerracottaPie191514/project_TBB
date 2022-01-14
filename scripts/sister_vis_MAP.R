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
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  ABG_proteobacteria = append(ABG_proteobacteria, peak)
}


Acidobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Acidobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Acidobacteria = append(Acidobacteria, peak)
}

Actinobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Actinobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Actinobacteria = append(Actinobacteria, peak)
}

Alphaproteobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Alphaproteobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Alphaproteobacteria = append(Alphaproteobacteria, peak)
}

Aquificae = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Aquificae/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Aquificae = append(Aquificae, peak)
}

Archaea = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Archaea/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Archaea = append(Archaea, peak)
}

Asgard_archaea = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Asgard_archaea/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Asgard_archaea = append(Asgard_archaea, peak)
}

Asgard_archaea_TACK = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Asgard_archaea_TACK/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Asgard_archaea_TACK = append(Asgard_archaea_TACK, peak)
}

Bacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Bacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Bacteria = append(Bacteria, peak)
}

Bacteroidetes = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Bacteroidetes/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Bacteroidetes = append(Bacteroidetes, peak)
}

Betaproteobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Betaproteobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Betaproteobacteria = append(Betaproteobacteria, peak)
}

cellular_organisms = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/cellular_organisms/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  cellular_organisms = append(cellular_organisms, peak)
}

Chlamydiae = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Chlamydiae/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Chlamydiae = append(Chlamydiae, peak)
}

Chlorobi = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Chlorobi/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Chlorobi = append(Chlorobi, peak)
}

Chloroflexi = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Chloroflexi/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Chloroflexi = append(Chloroflexi, peak)
}

Cyanobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Cyanobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Cyanobacteria = append(Cyanobacteria, peak)
}

Deferribacteres = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Deferribacteres/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Deferribacteres = append(Deferribacteres, peak)
}

Deinococcus_Thermus = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Deinococcus-Thermus/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Deinococcus_Thermus = append(Deinococcus_Thermus, peak)
}

Deltaproteobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Deltaproteobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Deltaproteobacteria = append(Deltaproteobacteria, peak)
}

Epsilonproteobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Epsilonproteobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Epsilonproteobacteria = append(Epsilonproteobacteria, peak)
}

Eukaryotic = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Eukaryotic/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Eukaryotic = append(Eukaryotic, peak)
}

Euryarchaeota = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Euryarchaeota/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Euryarchaeota = append(Euryarchaeota, peak)
}

FCB = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/FCB/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  FCB = append(FCB, peak)
}

Fibrobacteres = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Fibrobacteres/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Fibrobacteres = append(Fibrobacteres, peak)
}

Firmicutes = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Firmicutes/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Firmicutes = append(Firmicutes, peak)
}

Fusobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Fusobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Fusobacteria = append(Fusobacteria, peak)
}

Gammaproteobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Gammaproteobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Gammaproteobacteria = append(Gammaproteobacteria, peak)
}

Lentisphaerae = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Lentisphaerae/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Lentisphaerae = append(Lentisphaerae, peak)
}

Nanoarchaeota = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Nanoarchaeota/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Nanoarchaeota = append(Nanoarchaeota, peak)
}

Oligoflexia = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Oligoflexia/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Oligoflexia = append(Oligoflexia, peak)
}

Planctomycetes = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Planctomycetes/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Planctomycetes = append(Planctomycetes, peak)
}

Proteobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Proteobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Proteobacteria = append(Proteobacteria, peak)
}

PVC = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/PVC/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  PVC = append(PVC, peak)
}

SDD_17B = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/SDD-17B/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  SDD_17B = append(SDD_17B, peak)
}

Spirochaetes = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Spirochaetes/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Spirochaetes = append(Spirochaetes, peak)
}

TACK_archaea = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/TACK_archaea/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  TACK_archaea = append(TACK_archaea, peak)
}

Tenericutes = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Tenericutes/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Tenericutes = append(Tenericutes, peak)
}

Terrabacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Terrabacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Terrabacteria = append(Terrabacteria, peak)
}

Verrucomicrobia = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Verrucomicrobia/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Verrucomicrobia = append(Verrucomicrobia, peak)
}

Zetaproteobacteria = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/sister/Zetaproteobacteria/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  Zetaproteobacteria = append(Zetaproteobacteria, peak)
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

median_na_rm <- function(x) {
  x <- median(x, na.rm = TRUE)
  return(x)
}
mean_na_rm <- function(x) {
  x <- mean(x, na.rm = TRUE)
  return(x)
}

ordering = data %>%
  group_by(event) %>% 
  mutate(m = median_na_rm(age)) %>%
  arrange(desc(m)) %>%
  mutate("n_o" = sum(!is.na(age))) 

ordering = ordering[order(ordering$m,decreasing=T),]

events = aggregate(ordering$event, by =list(ordering$m), FUN=first)
number_observations = aggregate(ordering$n_o, by =list(ordering$m), FUN=first)


no_df = merge(events,number_observations, by="Group.1") %>% select(-c(1))
colnames(no_df) = c("event", "n_o")
no_df
no_df$event = rev(no_df$event)
no_df$n_o = rev(no_df$n_o)


ggplot(data, aes(age, y = fct_reorder(event, age,  .fun = median_na_rm, .desc = TRUE), fill = event)) + 
  geom_density_ridges(scale = 2) +
  coord_cartesian(xlim = c(50, 10)) +
#  annotate("text", x = 14.5, y = 1:6+0.1, label = c(no_df$n_o), size = 6*5/14, hjust = 1) +
  scale_x_reverse() + 
  scale_fill_manual(name = "category",
                    values = c("Bacterial" = "#ff7d00", "Asgard archaeal" = "#339e2b", "Prokaryotic" = "#683a99", "Archaeal" = "#1e78b3", "Alphaproteobacterial" = "#e31919", "Eukaryotic" = "#b05726"),
                    guide = "legend") + 
  theme_bw() +
  theme(axis.title.y=element_blank(),legend.position = "none", legend.title = element_blank()) + 
  labs(x = "Age in 100 Myr")



