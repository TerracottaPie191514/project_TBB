library(tidyverse)
library(reshape2)
library(magrittr)
library(ggridges)

high_ESS_2 = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/QC_comparison/high_ESS/QC_2_Pfams/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  high_ESS_2 = append(high_ESS_2, Pfam)
}

high_ESS_8 = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/QC_comparison/high_ESS/QC_8_Pfams/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  high_ESS_8 = append(high_ESS_8, Pfam)
}

low_ESS_2 = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/QC_comparison/low_ESS/QC_2_Pfams/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  low_ESS_2 = append(low_ESS_2, Pfam)
}

low_ESS_8 = c()
path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/QC_comparison/low_ESS/QC_8_Pfams/"
dirs <- dir(path)
for (PF in dirs){
  Pfam = scan(paste(path, PF, sep = ""))
  low_ESS_8 = append(low_ESS_8, Pfam)
}


data <- data.frame('High ESS 8x' = c(high_ESS_8),
                   'low ESS 8x' = c(low_ESS_8))

data %<>% gather(key = event, value= age)

data$event <- gsub('\\.', ' ', data$event)

data %>% 
  ggplot(aes(age, color = event, fill = event)) +  
  geom_density(alpha = 0.3) +
  coord_cartesian(xlim = c(50, 20)) +
  scale_x_reverse() +
  theme_bw() +
  theme(axis.title.y=element_blank(), legend.title = element_blank()) +
  labs( x = "Age in 100 Myr")


data2 <- data.frame('High ESS 2x' = c(high_ESS_2),
                   'Low ESS 2x' = c(low_ESS_2))

data2 %<>% gather(key = event, value= age)

data2$event <- gsub('\\.', ' ', data2$event)

data2 %>% 
  ggplot(aes(age, color = event, fill = event)) +  
  geom_density(alpha = 0.3) +
  coord_cartesian(xlim = c(50, 20)) +
  scale_x_reverse() +
  theme_bw() +
  theme(axis.title.y=element_blank(), legend.title = element_blank()) +
  labs( x = "Age in 100 Myr")
