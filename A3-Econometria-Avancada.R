# Econometria Avançada A2

# Revendo conceitos da Aula 2

install.packages("pwt8") #instalando o pacote pwt8
library(pwt8) #Start o pacote pwt8
data("pwt8.0") #carregando os dados do pacote pwt8.0
View(pwt8.0) #Mostrar a tabela pwt8.0
br <- subset(pwt8.0, country=="Brazil", select = c("rgdpna", "avh", "xr")) #constrói uma tabela para br onde escolhido o país Brasil e sua variaveis PIB; Trabalho e CAMBIO
colnames(br) <- c("PIB","Trabalho","Cambio") #altera o nome das variÃ¡veis
View(br) #Mostrar a tabela br criada
plot(br$PIB) #Constrói um grafico com os valores de PIB na tabela br
plot(br$PIB, type="l") #transforma os valores em forma de linha
dados <- ts(br, start = 1950,  frequency = 1) #Constrói uma tabela dados em forma de série temporal com inicio em 1950 e a frequencia Anual
plot(dados, col="blue", main = "Dados Brasileiros", xlab="Ano", plot.type = "single") #cria um grafico da tabela dados com cor azul
setwd("C:/Econometria/A3") #Salvar no Diretório do PC
write.csv(br,file = "br.csv") #salva a tabela
library("readr") #carrega o pacote de leitura de arquivos .csv
br <- read_csv("C:/Econometria/A3/br.csv", col_types = c("date", "numeric", "numeric", "numeric")) #Visualiza o arquivo .csv escolhido na pasta.
View(br) #Mostra a tabela
br <- br[,-1] #apaga a primeira coluna da tabela
colnames(br)[3] <- "Cammbio" #altera o nome da terceira coluna

#Salvar CNVAZQUEZ

write.csv(br,file = "Dados-Brasileiros.csv") #salva a nova tabela


