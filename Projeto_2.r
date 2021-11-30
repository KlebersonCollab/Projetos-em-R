# Importar as bibliotecas
library(stringr)
library(dplyr)
library(tidyverse)
library(data.table)
library(ggplot2)

#Carregando dados de idade.csv
data_idade <- read.csv2('D:/R/idade.csv')

#Apresentação dos dados
head(data_idade)

#Sumarizar a base de dados
summary(data_idade) 

#explorando os dados
class(data_idade$Freq) #dados tipo inteiro
class(data_idade$Idade) #dados tipo inteiro
data_idade[!complete.cases(data_idade),] # Verifica quais linhas apresenta incosistencias
data_idade[duplicated(data_idade$ID),] # Verifica se há dados duplicadores

#código boxplot:
data_idade <- read.csv2('D:/R/idade.csv')
boxplot(data_idade$Idade, main="Frequencias por Idades", xlab="", col="blue")
