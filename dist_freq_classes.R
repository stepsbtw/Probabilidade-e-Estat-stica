rm(list = ls())
dados = read.table("tabela1.csv", sep=";", header=TRUE, stringsAsFactors=TRUE)

x = dados[["Idade"]] # variavel analisada
xmax = max(x)
xmin = min(x)
AT = xmax-xmin # amplitude total dos dados

n = length(x) # tamanho da amostra
k = round(sqrt(n)) # numero de classes
h = round(AT/k) # amplitude das classes

xmax = xmax +1

x_lims = seq(xmin,xmax,h) # limites dos intervalos 
x_intervals = cut(x, breaks=x_lims, right=FALSE) # intervalos em si , com o elemento da direita fora do intervalo.
# li->|Li

Fi = table(x_intervals) 
fi = 100 * prop.table(Fi)
Fai = cumsum(Fi)
fai = cumsum(fi)

xi = seq(xmin+h/2,xmax,h) # pontos medios das classes

tab = cbind(xi,Fi,fi,Fai,fai)
round(tab, digits=2)

# MEDIDAS DE TENDENCIA CENTRAL

med = mean(x) # simples
med_class = sum(xi*Fi)/n

moda = function(x){ # argmax(Fi)
  Fi = table(x)
  #return (which.max(Fi))
  return (as.numeric(names(Fi)[Fi == max(Fi)])) # retornar o x que possui a maior frequencia
}

mod = moda(x)

moda_class = function(li,h,F0,F1,F2){
  return(li + h*(F1-F0)/(F1-F0)+(F1-F2))
}

moda_class_caio = function(x){
  return()
}
