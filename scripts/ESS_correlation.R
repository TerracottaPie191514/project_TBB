library(tidyverse)
library(LaplacesDemon)
library(magrittr)
library(coda)
library(purrr)

# read mcmc data
mcmc <- read.delim("~/uni/Project_TBB/Data/full_data/Results/prok_euk/MCMCTree_runs/PF00004_D31/run01/mcmc.txt")
mcmc %<>% select(-Gen)
mcmc2 = mcmc[2000:20000,]
mcmc3 = mcmc(mcmc2)
mcmc4 = ESS(mcmc3)
mcmc4


# read table output from tracer
tracer <- read.delim("~/uni/Project_TBB/Data/Pf00004_D31_tracer")


tracer2 = tracer %>% rownames_to_column() %>% pivot_longer(-rowname) %>% pivot_wider(names_from = rowname, values_from= value)


colnames(tracer2) = tracer2[1,]
tracer2 = tracer2[-1,]

tracer_vector = as.numeric(tracer2$`effective sample size (ESS)`[])
function_vector = unname(mcmc4)


cor.test(tracer_vector,function_vector)
cor(tracer_vector, function_vector, method = "pearson")


qplot(tracer_vector, function_vector) + geom_smooth(method=lm)
            
shapiro.test(tracer_vector)
shapiro.test(function_vector)
# both significant, so not normally distributed, will use spearman over pearson

cor.test(tracer_vector,function_vector,method="spearman")

# p-value < 2.2e-16, thus data is correlated
cor.test(function_vector,tracer_vector,method="spearman")

cor(function_vector,tracer_vector)
