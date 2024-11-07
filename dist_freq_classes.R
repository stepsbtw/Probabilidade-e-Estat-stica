rm(list = ls())

dados = read.table("tabela1.csv", sep=";", header=TRUE, stringsAsFactors=TRUE)

x = dados[["Idade"]]
xmax = max(x)
xmin = min(x)

AT = xmax-xmin
n = length(x)
k = round(sqrt(n))
h = round(AT/k)

xmax = xmax +1
x_lims = seq(xmin,xmax,h) # limites dos intervalos

x_intervals = cut(x, breaks=x_lims, right=FALSE) # intervalos em si , com o elemento da direita fora do intervalo.

Fi = table(x_intervals) 
fi = 100 * prop.table(Fi)
Fai = cumsum(Fi)
fai = cumsum(fi)

xi = seq(xmin+h/2,xmax,h) # pontos medios do histograma!

tab = cbind(xi,Fi,fi,Fai,fai)
round(tab, digits=2)
