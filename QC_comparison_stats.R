library(tidyverse)
library(reshape2)
library(magrittr)


high_ESS_2 = c()


path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/QC_comparison/high_ESS/QC_2_Pfams/"
dirs <- dir(path)
for (PF in dirs){
  print(PF)
  P_name = (substr(PF,1,nchar(PF)-4))
  high_ESS_2[[P_name]]= scan(paste(path, PF, sep = ""))
}

high_ESS_2 = as.data.frame(high_ESS_2)
mean(df$PF00035_D2.1)



high_ESS_8 = c()


path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/QC_comparison/high_ESS/QC_8_Pfams/"
dirs <- dir(path)
for (PF in dirs){
  print(PF)
  P_name = (substr(PF,1,nchar(PF)-4))
  high_ESS_8[[P_name]]= scan(paste(path, PF, sep = ""))
}

high_ESS_8 = as.data.frame(high_ESS_8)


low_ESS_2 = c()


path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/QC_comparison/low_ESS/QC_2_Pfams/"
dirs <- dir(path)
for (PF in dirs){
  print(PF)
  P_name = (substr(PF,1,nchar(PF)-4))
  low_ESS_2[[P_name]]= scan(paste(path, PF, sep = ""))
}

low_ESS_2 = as.data.frame(low_ESS_2)


low_ESS_8 = c()


path = "E:/Documents/uni/Project_TBB/Data/full_data/Results/Visualisation/QC_comparison/low_ESS/QC_8_Pfams/"
dirs <- dir(path)
for (PF in dirs){
  print(PF)
  P_name = (substr(PF,1,nchar(PF)-4))
  low_ESS_8[[P_name]]= scan(paste(path, PF, sep = ""))
}

low_ESS_8 = as.data.frame(low_ESS_8)


#boxplot(high_ESS_8$PF00076_D4.15,low_ESS_8$PF00076_D4.15)


high_ESS_2_means = colMeans(high_ESS_2)
high_ESS_8_means = colMeans(high_ESS_8)
low_ESS_2_means = colMeans(low_ESS_2)
low_ESS_8_means = colMeans(low_ESS_8)

# null hypothesis: mean difference between paired observations is zero

t.test(high_ESS_2_means, low_ESS_2_means, paired= TRUE)
t.test(high_ESS_8_means, low_ESS_8_means, paired = TRUE)

# null hypotheses differ: barely under 0.05 for 2x ESS, so null hypothesis is rejected, high p-value for ESS 8x, accepted

high_ESS_2_median = apply(high_ESS_2, 2, median)
high_ESS_8_median = apply(high_ESS_8, 2, median)
low_ESS_2_median = apply(low_ESS_2, 2, median)
low_ESS_8_median = apply(low_ESS_8, 2, median)

t.test(high_ESS_2_median, low_ESS_2_median, paired= TRUE)
t.test(high_ESS_8_median, low_ESS_8_median, paired= TRUE)

high_ESS_2_sd = apply(high_ESS_2, 2, sd)
high_ESS_8_sd = apply(high_ESS_8, 2, sd)
low_ESS_2_sd = apply(low_ESS_2, 2, sd)
low_ESS_8_sd = apply(low_ESS_8, 2, sd)

t.test(high_ESS_2_sd, low_ESS_2_sd, paired= TRUE)
t.test(high_ESS_8_sd, low_ESS_8_sd, paired= TRUE)


ks.test(high_ESS_2, low_ESS_2, paired = TRUE)
ks.test(density(high_ESS_8), density(low_ESS_8))
plot(high_ESS_2)

# null hypothesis: both samples come from a population with the same distribution, D-value = max distance

ks.test(high_ESS_2,low_ESS_2)
ks.test(high_ESS_8,low_ESS_8)

# low P-values, so null-hypotheses are rejected: distributions are not equal, D-value of 2x ESS is 0.004928
# while it is 0.013188 for the 8 ESS
# test for normality? not needed cuz large ss -> parametric tests
