library(LaplacesDemon)
library(tidyverse)
library(coda)

path = "~/uni/Project_TBB/Data/full_data/Results/Reassessment/duplications/"
directory <- dir(path)
ESS_too_small = c()
ESS_twice = c()
ESS_four_times = c()

for (PF in directory){
    dup = read.delim(paste(path, PF, sep = ""))
    dup = dup[2000:20000,]
    mcmc = mcmc(dup)
    ESS = ESS(mcmc)
    print(ESS)
    print(PF)
    if (ESS <= 200 && ESS >= 100) {
      ESS_twice = append(ESS_twice, PF)
    } else if (ESS < 100 && ESS >= 25){
      ESS_four_times = append(ESS_four_times, PF)
    } else if (ESS < 25){
      ESS_too_small = append(ESS_too_small, PF, ESS)
    }
}


print(ESS_four_times)

print(ESS_twice)
