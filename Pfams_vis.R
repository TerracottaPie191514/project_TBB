library(ggplot2)
library(tibble)
library(tidyr)
library(dplyr)
library(magrittr)
node1=scan("E:/Documents/uni/Project_TBB/Data/vis1/PF04280_D1/run01/t_n15.txt")
node2=scan("E:/Documents/uni/Project_TBB/Data/vis1/PF04280_D1/run02/t_n15.txt")


DF = data.frame(PF00092_D3.1=PF00092_D3.1, PF00092_D3.2=PF00092_D3.2, LECA1 = LECA1, LECA2 = LECA2, LECA3 = LECA3)

DF %<>% gather(key = event, value= age)


PF00092_D3.1 = scan("E:/Documents/uni/Project_TBB/Data/vis2/PF00092_D3/run01/D3.1.txt")
PF00092_D3.2 = scan("E:/Documents/uni/Project_TBB/Data/vis2/PF00092_D3/run01/D3.2.txt")

LECA1 = scan("E:/Documents/uni/Project_TBB/Data/vis2/PF00092_D3/run01/LECA1.txt")
LECA2 = scan("E:/Documents/uni/Project_TBB/Data/vis2/PF00092_D3/run01/LECA2.txt")
LECA3 = scan("E:/Documents/uni/Project_TBB/Data/vis2/PF00092_D3/run01/LECA3.txt")
  
LECA_mean = mean(c(LECA1,LECA2,LECA3))

LECA_constraints = c(19.58,23.86)

ggplot(DF)+aes(age, fill = event) +
  geom_density(alpha = 0.4) +
  geom_vline(xintercept = LECA_constraints, colour = 'red', linetype = "dashed") +
  geom_vline(xintercept = c(31.73805,26.30737)) +
  scale_x_reverse() +
  labs(x = "Age in 100 Myr", y = "Density") +
  theme_bw()



0.22460384702328237 * LECA_mean + LECA_mean



PF00622_D3.1 = scan("E:/Documents/uni/Project_TBB/Data/vis2/PF00622_D3/run01/D3.1.txt")
PF00622_D3.2 = scan("E:/Documents/uni/Project_TBB/Data/vis2/PF00622_D3/run01/D3.2.txt")
PF00622_D3.3 = scan("E:/Documents/uni/Project_TBB/Data/vis2/PF00622_D3/run01/D3.3.txt")
PF00622_D3.4 = scan("E:/Documents/uni/Project_TBB/Data/vis2/PF00622_D3/run01/D3.4.txt")
PF00622_D3.5 = scan("E:/Documents/uni/Project_TBB/Data/vis2/PF00622_D3/run01/D3.5.txt")




LECA1 = scan("E:/Documents/uni/Project_TBB/Data/vis2/PF00622_D3/run01/LECA1.txt")
LECA2 = scan("E:/Documents/uni/Project_TBB/Data/vis2/PF00622_D3/run01/LECA2.txt")
LECA3 = scan("E:/Documents/uni/Project_TBB/Data/vis2/PF00622_D3/run01/LECA3.txt")
LECA4 = scan("E:/Documents/uni/Project_TBB/Data/vis2/PF00622_D3/run01/LECA4.txt")
LECA5 = scan("E:/Documents/uni/Project_TBB/Data/vis2/PF00622_D3/run01/LECA5.txt")
LECA6 = scan("E:/Documents/uni/Project_TBB/Data/vis2/PF00622_D3/run01/LECA6.txt")

LECA_mean = mean(c(LECA1,LECA2,LECA3,LECA4,LECA5,LECA6))

0.0845444984766 * LECA_mean + LECA_mean



DF2 = data.frame(PF00622_D3.1=PF00622_D3.1, PF00622_D3.2=PF00622_D3.2, PF00622_D3.3 =PF00622_D3.3, PF00622_D3.4 = PF00622_D3.4, PF00622_D3.5 = PF00622_D3.5, LECA1 = LECA1, LECA2 = LECA2, LECA3 = LECA3, LECA4 = LECA4, LECA5 = LECA5, LECA6 = LECA6)

DF2 %<>% gather(key = event, value= age)

point_estimates = c(31.07491, 30.91043, 29.12801, 25.98883,23.33979)

ggplot(DF2)+aes(age, fill = event) +
  geom_density(alpha = 0.4) +
  geom_vline(xintercept = LECA_constraints, colour = 'red', linetype = "dashed") +
  geom_vline(xintercept = point_estimates) +
  scale_x_reverse() +
  labs(title = "Timing of duplications and leca for PF00622_D3", x = "Age in 100 Myr", y = "Density") +
  theme_bw()