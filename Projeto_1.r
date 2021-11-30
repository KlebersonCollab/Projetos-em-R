# Importar as bibliotecas
library(stringr)
library(dplyr)
library(tidyverse)
library(data.table)
library(ggplot2)

#Carregando dados de pacientes.csv
pacientes <-read.csv2("D:/R/pacientes.csv", sep= ",", encoding = "UTF-8", na.strings= "", dec= ".", stringsAsFactors = F)

#Apresenta��o dos dados
head(pacientes)
#Sumarizar a base de dados
summary(pacientes) 

#explorando os dados
class(pacientes$ID) #dados tipo inteiro
class(pacientes$Idade.do.Segurado) #dados tipo inteiro
class(pacientes$C�digo.do.Procedimento.Principal) #dados tipo inteiro
class(pacientes$Valor.Total.Liberado) # dados do tipo texto
pacientes[!complete.cases(pacientes),] # Verifica quais linhas apresenta incosistencias
pacientes[duplicated(pacientes$ID),] # Verifica se h� dados duplicadores

#Plotando para an�lise de quantidade x idade dos assegurados
summary(pacientes$Idade.do.Segurado)
boxplot(pacientes$Idade.do.Segurado)
hist(pacientes$Idade.do.Segurado, 
     main= "Idade dos Assegurados",
     xlab= "Idades",
     ylab= "Quantidade de pacientes atendidos")





#c�digo boxplot:
data_idade <- read.csv2('D:/R/idade.csv')
boxplot(data_idade$Idade, main="Distribui��o das Idades", xlab="medi��o", col="blue")
