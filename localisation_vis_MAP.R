library(tidyverse)
library(reshape2)
library(magrittr)
library(ggridges)

cytoskeleton = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/localisation/cytoskeleton/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  cytoskeleton = append(cytoskeleton,peak)
}

cytosol = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/localisation/cytosol/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  cytosol = append(cytosol,peak)
}

endosome = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/localisation/endosome/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  endosome = append(endosome,peak)
}

ER = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/localisation/ER/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  ER = append(ER,peak)
}

extracellular_region = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/localisation/extracellular_region/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  extracellular_region = append(extracellular_region,peak)
}


golgi = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/localisation/golgi/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  golgi = append(golgi,peak)
}

mitochondrion = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/localisation/mitochondrion/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  mitochondrion = append(mitochondrion,peak)
}

nuclear_chromosome = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/localisation/nuclear_chromosome/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  nuclear_chromosome = append(nuclear_chromosome,peak)
}

nucleolus = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/localisation/nucleolus/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  nucleolus = append(nucleolus,peak)
}

nucleoplasm = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/localisation/nucleoplasm/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  nucleoplasm = append(nucleoplasm,peak)
}

nucleoplasm = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/localisation/nucleoplasm/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  nucleoplasm = append(nucleoplasm,peak)
}

plasma_membrane = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/localisation/plasma_membrane/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  plasma_membrane = append(plasma_membrane,peak)
}

vacuole = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/localisation/vacuole/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  vacuole = append(vacuole,peak)
}

max_length <- max(c(length(cytosol), length(nucleoplasm), length(cytoskeleton))) 
print(max_length)

data <- data.frame('Cytosol' = c(cytosol,                 # Create data frame with unequal vectors
                                    rep(NA, max_length - length(cytosol))),
                   'Cytoskeleton' = c(cytoskeleton,
                                    rep(NA, max_length - length(cytoskeleton))),
                   'Endosome' = c(endosome,
                                    rep(NA, max_length - length(endosome))),
                   'Extracellular region' = c(extracellular_region,
                                    rep(NA, max_length - length(extracellular_region))),
                   'Golgi apparatus' = c(golgi,
                                    rep(NA, max_length - length(golgi))),
                   'Mitochondrion' = c(mitochondrion,
                                    rep(NA, max_length - length(mitochondrion))),
                   'Nuclear chromosome' = c(nuclear_chromosome,
                                    rep(NA, max_length - length(nuclear_chromosome))),
                   'Nucleolus' = c(nucleolus,
                                    rep(NA, max_length - length(nucleolus))),
                   'Nucleoplasm' = c(nucleoplasm,
                                    rep(NA, max_length - length(nucleoplasm))),
                   'Vacuole' = c(vacuole,
                                    rep(NA, max_length - length(vacuole))),
                   'Endoplasmatic Reticulum' = c(ER,
                                rep(NA, max_length - length(ER))),
                   'Plasma membrane' = c(plasma_membrane,
                                     rep(NA, max_length - length(plasma_membrane))))

data %<>% gather(key = event, value= age)

give_broader_cat <- function(subcategory) {
  other = c('Extracellular.region','Cytosol')
  meta = c('Mitochondrion')
  cyto = c('Cytoskeleton')
  nucleus = c("Nucleolus", "Nuclear.chromosome", "Nucleoplasm")
  if(subcategory %in% other) {return("Other")} 
  else if(subcategory %in% meta) {return("Metabolic compartment")}
  else if(subcategory %in% cyto) {return("Cytoskeleton")}
  else if(subcategory %in% nucleus) {return("Nucleus")}
  else {return("Endomembrane system")}
}


data %<>% select(event, age) %>% mutate(cat = unlist(map(event,give_broader_cat)))

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
  mutate(m = mean_na_rm(age)) %>%
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




ggplot(data, aes(age, y = fct_reorder(event, age, .fun = median_na_rm, .desc = TRUE), fill = as.factor(cat))) + 
  geom_density_ridges(scale = 2) +
  geom_rect(data = data[1,], aes(xmin=24.5328, xmax=27.2155, ymin=0, ymax=Inf),alpha = 0.5, fill = "grey") +
  geom_rect(data = data[1,], aes(xmin=27.8432, xmax=31.1932, ymin=0, ymax=Inf),alpha = 0.5, fill = "grey") +
#  geom_rect(data = data[1,], aes(xmin=19.58, xmax=23.86, ymin=0, ymax=Inf),alpha = 0.5, fill = "grey") +
  annotate("text", x = 14.5, y = 1:12+0.2, label = c(no_df$n_o), size = 6*5/14, hjust = 1) +
  coord_cartesian(xlim = c(50, 10)) +
  scale_x_reverse() + 
  scale_fill_manual(name = "category",
                    values = c("Endomembrane system" = "#ff7f00","Cytoskeleton" = "#a65628", "Nucleus" = "#984ea3","Other" = "#999999","Metabolic compartment" = "#f781bf"),
                    guide = "legend") + 
  theme_bw() +
  theme(axis.title.y=element_blank(), legend.position = "top") + 
  labs(x = "Age in 100 Myr") 

