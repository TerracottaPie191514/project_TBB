library(ggplot2)
library(dplyr)
library(reshape2)
library(magrittr)
library(tidyr)
library(purrr)
library(ggridges)
library(forcats)
amino_acid_transport_and_metabolism = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/amino_acid_transport_and_metabolism/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  amino_acid_transport_and_metabolism = append(amino_acid_transport_and_metabolism, Pfam)
}


carbohydrate_transport_and_metabolism = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/carbohydrate_transport_and_metabolism/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  carbohydrate_transport_and_metabolism = append(carbohydrate_transport_and_metabolism, Pfam)
}

cell_cycle_control_cell_division_chromosome_partitioning = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/cell_cycle_control_cell_division_chromosome_partitioning/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  cell_cycle_control_cell_division_chromosome_partitioning = append(cell_cycle_control_cell_division_chromosome_partitioning, Pfam)
}

#cell_motility = c()
#path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/cell_motility/"
#dirs <- dir(path)
#for (PF in dirs){
#  Pfam = scan(paste(path, PF, sep = ""))
#  cell_motility = append(cell_motility, Pfam)
#}

cell_wall_membrane_envelope_biogenesis = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/cell_wall_membrane_envelope_biogenesis/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  cell_wall_membrane_envelope_biogenesis = append(cell_wall_membrane_envelope_biogenesis, Pfam)
}

chromatin_structure_and_dynamics = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/chromatin_structure_and_dynamics/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  chromatin_structure_and_dynamics = append(chromatin_structure_and_dynamics, Pfam)
}

#coenzym_transport_and_metabolism = c()
#path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/coenzym_transport_and_metabolism/"
#dirs <- dir(path)
#for (PF in dirs){
#  Pfam = scan(paste(path, PF, sep = ""))
#  coenzym_transport_and_metabolism = append(coenzym_transport_and_metabolism, Pfam)

cytoskeleton = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/cytoskeleton/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  cytoskeleton = append(cytoskeleton, Pfam)
}

defense_mechanisms = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/defense_mechanisms/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  defense_mechanisms = append(defense_mechanisms, Pfam)
}

energy_production_and_conversion = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/energy_production_and_conversion/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  energy_production_and_conversion = append(energy_production_and_conversion, Pfam)
}
#extracellular_structures = c()
#path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/extracellular_structures/"
#dirs <- dir(path)
#for (PF in dirs){
#  Pfam = scan(paste(path, PF, sep = ""))
#  extracellular_structures = append(extracellular_structures, Pfam)
#}
inorganic_ion_transport_and_metabolism = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/inorganic_ion_transport_and_metabolism/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  inorganic_ion_transport_and_metabolism = append(inorganic_ion_transport_and_metabolism, Pfam)
}
intracellular_trafficking_secretion_and_vesicular_transport = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/intracellular_trafficking_secretion_and_vesicular_transport/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  intracellular_trafficking_secretion_and_vesicular_transport = append(intracellular_trafficking_secretion_and_vesicular_transport, Pfam)
}
lipid_transport_and_metabolism = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/lipid_transport_and_metabolism/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  lipid_transport_and_metabolism = append(lipid_transport_and_metabolism, Pfam)
}
#nuclear_structure = c()
#path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/nuclear_structure/"
#dirs <- dir(path)
#for (PF in dirs){
#  Pfam = scan(paste(path, PF, sep = ""))
#  nuclear_structure = append(nuclear_structure, Pfam)
#}
nucleotide_transport_and_metabolism = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/nucleotide_transport_and_metabolism/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  nucleotide_transport_and_metabolism = append(nucleotide_transport_and_metabolism, Pfam)
}
posttranslational_modification_protein_turnover_chaperones = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/posttranslational_modification_protein_turnover_chaperones/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  posttranslational_modification_protein_turnover_chaperones = append(posttranslational_modification_protein_turnover_chaperones, Pfam)
}
replication_recombination_and_repair = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/replication_recombination_and_repair/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  replication_recombination_and_repair = append(replication_recombination_and_repair, Pfam)
}
RNA_processing_and_modification = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/RNA_processing_and_modification/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  RNA_processing_and_modification = append(RNA_processing_and_modification, Pfam)
}
secondary_metabolites_biosynthesis_transport_and_catabolism = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/secondary_metabolites_biosynthesis_transport_and_catabolism/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  secondary_metabolites_biosynthesis_transport_and_catabolism = append(secondary_metabolites_biosynthesis_transport_and_catabolism, Pfam)
}
signal_transduction_mechanisms = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/signal_transduction_mechanisms/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  signal_transduction_mechanisms = append(signal_transduction_mechanisms, Pfam)
}
transcription = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/transcription/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  transcription = append(transcription, Pfam)
}
translation_ribosomal_structure_and_biogenesis = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/translation_ribosomal_structure_and_biogenesis/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  translation_ribosomal_structure_and_biogenesis = append(translation_ribosomal_structure_and_biogenesis, Pfam)
}


max_length <- max(c(length(signal_transduction_mechanisms), length(intracellular_trafficking_secretion_and_vesicular_transport), length(inorganic_ion_transport_and_metabolism))) 
print(max_length)

data <- data.frame('Amino acids' = c(amino_acid_transport_and_metabolism,                 # Create data frame with unequal vectors
                                     rep(NA, max_length - length(amino_acid_transport_and_metabolism))),
                   'Carbohydrates' = c(carbohydrate_transport_and_metabolism,
                                       rep(NA, max_length - length(carbohydrate_transport_and_metabolism))),
                   'Cell cycle' = c(cell_cycle_control_cell_division_chromosome_partitioning,
                                    rep(NA, max_length - length(cell_cycle_control_cell_division_chromosome_partitioning))),
                   'Cell envelope' = c(cell_wall_membrane_envelope_biogenesis,
                                       rep(NA, max_length - length(cell_wall_membrane_envelope_biogenesis))),
                   'Chromatin' = c(chromatin_structure_and_dynamics,
                                   rep(NA, max_length - length(chromatin_structure_and_dynamics))),
                   'Cytoskeleton' = c(cytoskeleton,
                                      rep(NA, max_length - length(cytoskeleton))),
                   'Defense mechanisms' = c(defense_mechanisms,
                                              rep(NA, max_length - length(defense_mechanisms))),
                   'Energy' = c(energy_production_and_conversion,
                                rep(NA, max_length - length(energy_production_and_conversion))),
                   'Inorganic ions' = c(inorganic_ion_transport_and_metabolism,
                                        rep(NA, max_length - length(inorganic_ion_transport_and_metabolism))),
                   'Intracellular trafficking' = c(intracellular_trafficking_secretion_and_vesicular_transport,
                                                   rep(NA, max_length - length(intracellular_trafficking_secretion_and_vesicular_transport))),
                   'Lipids' = c(lipid_transport_and_metabolism,
                                rep(NA, max_length - length(lipid_transport_and_metabolism))),
                   'Nucleotides' = c(nucleotide_transport_and_metabolism,
                                     rep(NA, max_length - length(nucleotide_transport_and_metabolism))),
                   'Protein modification' = c(posttranslational_modification_protein_turnover_chaperones,
                                              rep(NA, max_length - length(posttranslational_modification_protein_turnover_chaperones))),
                   'Replication' = c(replication_recombination_and_repair,
                                     rep(NA, max_length - length(replication_recombination_and_repair))),
                   'RNA processing' = c(RNA_processing_and_modification,
                                        rep(NA, max_length - length(RNA_processing_and_modification))),
                   'Secondary metabolites' = c(secondary_metabolites_biosynthesis_transport_and_catabolism,
                                               rep(NA, max_length - length(secondary_metabolites_biosynthesis_transport_and_catabolism))),
                   'Signal transduction' = c(signal_transduction_mechanisms,
                                             rep(NA, max_length - length(signal_transduction_mechanisms))),
                   'Transcription' = c(transcription,
                                       rep(NA, max_length - length(transcription))),
                   'Translation' = c(translation_ribosomal_structure_and_biogenesis,
                                     rep(NA, max_length - length(translation_ribosomal_structure_and_biogenesis))))

data %<>% gather(key = event, value= age)

give_broader_cat <- function(subcategory) {
  info = c('Replication','Chromatin','RNA.processing','Transcription','Translation')
  meta = c('Amino.acids','Carbohydrates','Coenzyms','Energy','Inorganic.ions','Lipids','Nucleotides','Secondary.metabolites')
  if(subcategory %in% info) {return("Information storage and processing")} 
  else if(subcategory %in% meta) {return("Metabolism")}
  else {return("Cellular Processes and signaling")}
}



data %<>% select(event, age) %>% mutate(cat = unlist(map(event,give_broader_cat)))

data$event <- gsub('\\.', ' ', data$event)


median_na_rm <- function(x) {
  x <- median(x, na.rm = TRUE)
  return(x)
}

pfams = c(14,454,17,176,42,20,102,83,89,41,67,367,32,51,220,158,253,60,177)


# small > pfams = c(454,14,17,176,42,20,83,102,89,41,32,367,67,51,220,158,253,60,177)


ggplot(data, aes(age, y = fct_reorder(event, age, .fun = median_na_rm, .desc = TRUE), fill = as.factor(cat))) + 
  geom_density_ridges(scale = 2) +
  annotate("text", x = 18.5, y = 1:19+0.2, label = c(rev(pfams)), size = 6*5/14, hjust = 1) +
  coord_cartesian(xlim = c(50,20)) +
  scale_x_reverse() + 
  scale_fill_manual(name = "category",
                    values = c("Cellular Processes and signaling" = "#33a02c","Information storage and processing" = "#1f78b4","Metabolism" = "#e31a1c"),
                    guide = "legend") + 
  theme_bw() +
  theme(axis.title.y=element_blank(), legend.position = "top", legend.title = element_blank()) + 
  labs(x = "Age in 100 Myr") 




#ggplot(data, aes(age, event, fill = as.factor(cat))) + 
#  geom_density_ridges(scale = 2) +
#  scale_x_reverse() + 
#  scale_fill_manual(name = "category",
#                    values = c("#33a02c", "#1f78b4", "#e31a1c"),
#                    #labels = c(Metabolism = "#33a02c", "Information storage and processing" = "#1f78b4", "Cellular Processes and signaling" = "#e31a1c"),
#                    guide = "legend") + 
#  theme_bw() +
#  theme(axis.title.y=element_blank(), legend.title = element_blank()) + 
#  labs(title = "Timing of duplication events per COG", x = "Age in 100 Myr")



  
