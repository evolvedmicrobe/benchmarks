library(ggplot2)
setwd("~/git/benchmarks/dotnetcore/")
d= read.csv("timings.csv")
head(d)
pl = ggplot(d, aes(x=Platform, y=Timing)) + geom_point(size=2) + theme_bw(base_size=16) + labs(x="CLR Implementation", y ="Time to Parse (s)") + geom_smooth(color="red")
pl
png("Benchmark.png")
pl
dev.off()