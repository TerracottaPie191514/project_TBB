library(tidyverse)
library(reshape2)
library(magrittr)
library(ggridges)

amino_acid_transport_and_metabolism = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/amino_acid_transport_and_metabolism/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  amino_acid_transport_and_metabolism = append(amino_acid_transport_and_metabolism, peak)
}

carbohydrate_transport_and_metabolism = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/carbohydrate_transport_and_metabolism/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  carbohydrate_transport_and_metabolism = append(carbohydrate_transport_and_metabolism,peak)
}

cell_cycle_control_cell_division_chromosome_partitioning = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/cell_cycle_control_cell_division_chromosome_partitioning/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  cell_cycle_control_cell_division_chromosome_partitioning = append(cell_cycle_control_cell_division_chromosome_partitioning,peak)
}


cell_wall_membrane_envelope_biogenesis = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/cell_wall_membrane_envelope_biogenesis/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  cell_wall_membrane_envelope_biogenesis = append(cell_wall_membrane_envelope_biogenesis,peak)
}

chromatin_structure_and_dynamics = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/chromatin_structure_and_dynamics/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  chromatin_structure_and_dynamics = append(chromatin_structure_and_dynamics,peak)
}


cytoskeleton = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/cytoskeleton/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  cytoskeleton = append(cytoskeleton,peak)
}

defense_mechanisms = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/defense_mechanisms/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  defense_mechanisms = append(defense_mechanisms,peak)
}

energy_production_and_conversion = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/energy_production_and_conversion/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  energy_production_and_conversion = append(energy_production_and_conversion,peak)
}

inorganic_ion_transport_and_metabolism = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/inorganic_ion_transport_and_metabolism/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  inorganic_ion_transport_and_metabolism = append(inorganic_ion_transport_and_metabolism,peak)
}
intracellular_trafficking_secretion_and_vesicular_transport = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/intracellular_trafficking_secretion_and_vesicular_transport/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  intracellular_trafficking_secretion_and_vesicular_transport = append(intracellular_trafficking_secretion_and_vesicular_transport,peak)
}
lipid_transport_and_metabolism = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/lipid_transport_and_metabolism/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  lipid_transport_and_metabolism = append(lipid_transport_and_metabolism,peak)
}
nucleotide_transport_and_metabolism = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/nucleotide_transport_and_metabolism/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  nucleotide_transport_and_metabolism = append(nucleotide_transport_and_metabolism,peak)
}
posttranslational_modification_protein_turnover_chaperones = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/posttranslational_modification_protein_turnover_chaperones/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  posttranslational_modification_protein_turnover_chaperones = append(posttranslational_modification_protein_turnover_chaperones,peak)
}
replication_recombination_and_repair = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/replication_recombination_and_repair/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  replication_recombination_and_repair = append(replication_recombination_and_repair,peak)
}
RNA_processing_and_modification = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/RNA_processing_and_modification/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  RNA_processing_and_modification = append(RNA_processing_and_modification,peak)
}
secondary_metabolites_biosynthesis_transport_and_catabolism = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/secondary_metabolites_biosynthesis_transport_and_catabolism/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  secondary_metabolites_biosynthesis_transport_and_catabolism = append(secondary_metabolites_biosynthesis_transport_and_catabolism,peak)
}
signal_transduction_mechanisms = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/signal_transduction_mechanisms/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  signal_transduction_mechanisms = append(signal_transduction_mechanisms,peak)
}
transcription = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/transcription/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  transcription = append(transcription,peak)
}
translation_ribosomal_structure_and_biogenesis = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/cog_categories/translation_ribosomal_structure_and_biogenesis/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  peak = density(Pfam)$x[which.max(density(Pfam)$y)]
  translation_ribosomal_structure_and_biogenesis = append(translation_ribosomal_structure_and_biogenesis,peak)
}

max_length <- max(c(length(transcription), length(signal_transduction_mechanisms), length(posttranslational_modification_protein_turnover_chaperones))) 
print(max_length)




data <- data.frame('Amino acids' = c(amino_acid_transport_and_metabolism,                 # Create data frame with unequal vectors
                                     rep(NA, max_length - length(amino_acid_transport_and_metabolism))),
                   'Carbohydrates' = c(carbohydrate_transport_and_metabolism,
                                       rep(NA, max_length - length(carbohydrate_transport_and_metabolism))),
                   'Cell cycle' = c(cell_cycle_control_cell_division_chromosome_partitioning,
                                    rep(NA, max_length - length(cell_cycle_control_cell_division_chromosome_partitioning))),
                   'Chromatin' = c(chromatin_structure_and_dynamics,
                                   rep(NA, max_length - length(chromatin_structure_and_dynamics))),
                   'Cytoskeleton' = c(cytoskeleton,
                                      rep(NA, max_length - length(cytoskeleton))),
                   'Energy' = c(energy_production_and_conversion,
                                rep(NA, max_length - length(energy_production_and_conversion))),
                   'Inorganic ions' = c(inorganic_ion_transport_and_metabolism,
                                        rep(NA, max_length - length(inorganic_ion_transport_and_metabolism))),
                   'Intracellular trafficking' = c(intracellular_trafficking_secretion_and_vesicular_transport,
                                                   rep(NA, max_length - length(intracellular_trafficking_secretion_and_vesicular_transport))),
                   'Lipids' = c(lipid_transport_and_metabolism,
                                rep(NA, max_length - length(lipid_transport_and_metabolism))),
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




ggplot(data, aes(age, y = fct_reorder(event, age, .fun = median_na_rm, .desc = TRUE), fill = as.factor(cat))) + 
  geom_density_ridges(scale = 2) +
  geom_rect(data = data[1,], aes(xmin=24.5328, xmax=27.2155, ymin=0, ymax=Inf),alpha = 0.5, fill = "grey") +
  geom_rect(data = data[1,], aes(xmin=27.8432, xmax=31.1932, ymin=0, ymax=Inf),alpha = 0.5, fill = "grey") +
#  geom_rect(data = data[1,], aes(xmin=19.58, xmax=23.86, ymin=0, ymax=Inf),alpha = 0.5, fill = "grey") +
#  theme_ridges(font_size = 7, center_axis_labels = TRUE) +
  annotate("text", x = 14.5, y = 1:16+0.2, label = c(no_df$n_o), size = 6*5/14, hjust = 1) +
  coord_cartesian(xlim = c(50, 10)) +
  scale_x_reverse() + 
  scale_fill_manual(name = "category",
                    values = c("Cellular Processes and signaling" = "#33a02c","Information storage and processing" = "#1f78b4","Metabolism" = "#e31a1c"),
                    guide = "legend") + 
  theme_bw() +
  theme(axis.title.y=element_blank(), legend.position = "top", legend.title = element_blank()) + 
  labs( x = "Age in 100 Myr")
#  ggsave(filename= "cog_vis.tiff", path = ".", width = 876, height = 559, device='png', dpi=300, limitsize = FALSE)



