library(tidyverse)
library(reshape2)
library(magrittr)
library(ggridges)

cytoskeleton = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/localisation/cytoskeleton/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  cytoskeleton = append(cytoskeleton, Pfam)
}

cytosol = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/localisation/cytosol/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  cytosol = append(cytosol,Pfam)
}

endosome = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/localisation/endosome/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  endosome = append(endosome,Pfam)
}

ER = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/localisation/ER/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  ER = append(ER,Pfam)
}

extracellular_region = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/localisation/extracellular_region/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  extracellular_region = append(extracellular_region,Pfam)
}


golgi = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/localisation/golgi/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  golgi = append(golgi,Pfam)
}

mitochondrion = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/localisation/mitochondrion/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  mitochondrion = append(mitochondrion,Pfam)
}

nuclear_chromosome = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/localisation/nuclear_chromosome/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  nuclear_chromosome = append(nuclear_chromosome,Pfam)
}

nucleolus = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/localisation/nucleolus/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  nucleolus = append(nucleolus,Pfam)
}

nucleoplasm = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/localisation/nucleoplasm/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  nucleoplasm = append(nucleoplasm,Pfam)
}

nucleoplasm = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/localisation/nucleoplasm/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  nucleoplasm = append(nucleoplasm,Pfam)
}

plasma_membrane = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/localisation/plasma_membrane/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  plasma_membrane = append(plasma_membrane,Pfam)
}

vacuole = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/localisation/vacuole/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  vacuole = append(vacuole,Pfam)
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



pfams = c(28,160,28,102,65,125,46,36,36,284,117,53)



ggplot(data, aes(age, y = fct_reorder(event, age, .fun = median_na_rm, .desc = TRUE), fill = as.factor(cat))) + 
  geom_density_ridges(scale = 2) +
  #  geom_rect(data = data[1,], aes(xmin=19.58, xmax=23.86, ymin=0, ymax=Inf),alpha = 0.5, fill = "grey") +
  annotate("text", x = 18.5, y = 1:12+0.2, label = c(rev(pfams)), size = 6*5/14, hjust = 1) +
  coord_cartesian(xlim = c(50, 20)) +
  scale_x_reverse() + 
  scale_fill_manual(name = "category",
                    values = c("Endomembrane system" = "#ff7f00","Cytoskeleton" = "#a65628", "Nucleus" = "#984ea3","Other" = "#999999","Metabolic compartment" = "#f781bf"),
                    guide = "legend") + 
  theme_bw() +
  theme(axis.title.y=element_blank(), legend.position = "top", legend.title = element_blank()) + 
  labs(x = "Age in 100 Myr") 

