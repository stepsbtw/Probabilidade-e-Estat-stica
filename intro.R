rm(list = ls()) # apaga todas variaveis ate entao

ano = c(2000, 2001, 2002, 2003, 2004)
alunos = c(40, 59, 63, 69, 71)

tab1 = cbind(ano,alunos)
print(tab1)

tab2 = data.frame(ano,alunos)
print(tab2)

#dados2 = read.csv("tabela1.csv", sep=";", header=TRUE)
dados = read.table("tabela1.csv", sep=";", header=TRUE, stringsAsFactors=TRUE) # header -> ja temos colunas especificadas!

#print(dados2)
print(dados)

names(dados) # mostra colunas

# attach(dados) # transforma as colunas em variaveis
# nao ideal usar attach, melhor indexar.

summary(dados) # quantitativa : min,max,quartis,media,mediana
# qualitativa : frequencia total de cada categoria possivel.

print(dados["Procedencia"]) # retorna um dataframe.
print(dados[["Procedencia"]]) # retorna um vetor.

x = table(dados["Procedencia"]) # cria uma tabela com informacoes
print(x)

x = sort(x, decreasing=TRUE)
print(x)

tab3 = c(x,sum(x)) # criando nova coluna
print(tab3)

names(tab3)[4] = "Total" # dessa forma eu consigo alterar o nome da coluna!
print(tab3)
