setwd('/home/mbc/Dropbox/ITAM_Dropbox/Métodos Analíticos')

library('plyr')
library('dplyr')

datos <- read.csv('./Notas LuisFe/clase_1_mbasket/datos/srep00196-s3.csv')

baskets <- lapply(seq(nrow(datos)), function(i){ 
  b <- as.vector(as.matrix(datos[i,2:31]))
  data.frame(id = i, region=datos[i,1],  ing = b[b!=""] )}) %>%
  rbind_all

#Número total de recetas
length(unique(baskets$ing))
