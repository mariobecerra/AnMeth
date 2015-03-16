###Mario Becerra 124362
#Tarea 1
#22 ene 2015

#1) Escribe un versión vectorizada y una no vectorizada de la función comprimir. Esta función debe recibir un vector, dos límites a y b (números) y debe devolver un vector cuyas entradas estén entre a y b.

#a) No vectorizada

comprime_no_vect <- function(arr, a, b) {
  for(i in c(1:length(arr))) {
    if(arr[i]<min(a,b))
      arr[i] <- min(a,b)
    if(arr[i]>max(a,b))
      arr[i] <- max(a,b)
  }
  return (arr)
}

#b) Vectorizada
comprime_vect <- function(arr, a, b) {
  arr[arr<min(a,b)] <- min(a,b)
  arr[arr>max(a,b)] <- max(a,b)
  return(arr)
}

#Compararlos
library(microbenchmark)

a<-seq(0,1000000, 0.1)
microbenchmark(b_1 <- comprime_no_vect(a, 20, 30), b_1 <- comprime_vect(a, 20, 30), times = 10)

# Resultados
# Unit: seconds
# expr       min       lq      mean   median        uq       max neval
# b_1 <- comprime_no_vect(a, 20, 30) 47.713389 52.04265 56.404543 55.51183 58.493175 75.518920    10
# b_1 <- comprime_vect(a, 20, 30)  1.267547  1.47227  1.613893  1.57277  1.804761  1.983951    10

source(paste(getwd(),"/other.R",sep=""))
