library(ggplot2)

dirs <- dir("./visualisation/")#, pattern="PF[[:alnum:]]+$" , full.names = True)
for (PF in dirs) {
  setwd(paste('./visualisation/', PF, '/run01',sep = ""))
  print(PF)
  v1 = scan("posterior_means.txt")
  setwd('../run02')
  v2 = scan("posterior_means.txt")
  setwd('..')
  convergence_plot = qplot(v1,v2) + geom_abline() + labs(x = "Posterior mean times run 1", y = "Posterior mean times run 2")
  png("convergence_plot.png")
  print(convergence_plot)
  dev.off()
}
