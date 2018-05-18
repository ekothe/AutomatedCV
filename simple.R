library(scholar)
library(ggplot2)

your.id<-"SIeJ24UAAAAJ" # This is your google scholar ID

profile<-get_profile(your.id)
pubs<-get_publications(your.id, cstart = 0, pagesize = 100, flush = FALSE)
write.csv(pubs, "pubs.csv")

citations<-get_citation_history(your.id)

p<-ggplot(data=citations, aes(x=year, y=cites))+geom_bar(stat="identity", fill="steelblue")+theme_classic()+ylab("New Citations (n)")+xlab("Year")
p
