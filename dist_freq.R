rm(list = ls())

dados = read.table("tabela1.csv", sep=";", header=TRUE, stringsAsFactors=TRUE)

x = dados[["N.Ir."]] # numero de irmaos

Fi = table(x)
fi = 100 * prop.table(Fi)

Fai = cumsum(Fi)
fai = cumsum(fi)

tab = cbind(Fi,fi,Fai,fai)
round(tab,digits=2)
