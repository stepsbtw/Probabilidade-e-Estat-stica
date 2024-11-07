rm(list = ls())

dados = read.table("tabela1.csv", sep=";", header=TRUE, stringsAsFactors=TRUE)

x = table(dados["Procedencia"])

x = sort(x, decreasing=TRUE)

x_fi = 100 * prop.table(x) # retorna as frequencias relativas.

tab_1 = c(x,sum(x))
names(tab_1)[4] = "Total"

tab_2 = c(x_fi,sum(x_fi))
names(tab_1)[4] = "Total"

tab = cbind(tab_1,tab_2)
round(tab,digits=2)
