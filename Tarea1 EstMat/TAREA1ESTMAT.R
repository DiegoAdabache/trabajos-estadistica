set.seed(20240905)


# Binomial


nBi <- 25
p <- 0.9

m <- 500   #muestras
N <- 5000  # número de repeticiones


promedios <- replicate(N, {
  muestra <- rbinom(m, size = nBi, prob = p)
  mean(muestra)
})

# Calcular media y desviación estándar teóricas de la Binomial

mu <- mean(promedios)
vari <- var(promedios)
promEst <- (promedios-mu) / sqrt(vari)



"
mu <- nBi * p
sigma <- sqrt(nBi * p * (1 - p))
promEst <- (promedios - mu) / (sigma / sqrt(m))
"

out <- hist(promEst, breaks = 16, plot = TRUE, main = "binomiales estandarizadas")


# Resta de áreas 

ancho <- diff(out$breaks)

area_empirica <- out$density * ancho
area_teorica <- pnorm(out$breaks[-1]) - pnorm(out$breaks[-length(out$breaks)])


error_intervalo <- abs(area_empirica - area_teorica)

error_total <- sum(error_intervalo)
error_total



# POISSON


m <- 500   #muestras
N <- 5000     # número de repeticiones
lam <- 8

promedios <- replicate(N, {
  muestra <- rpois(m,lam)
  mean(muestra)
})

# Calcular media y desviación estándar teóricas de la Poisson

mu <- mean(promedios)
vari <- var(promedios)
promEst <- (promedios-mu) / sqrt(vari)



out <- hist(promEst, breaks = 16, plot = TRUE, main = "Poisson estandarizadas")

ancho <- diff(out$breaks)

area_empirica <- out$density * ancho

area_teorica <- pnorm(out$breaks[-1]) - pnorm(out$breaks[-length(out$breaks)])

error_intervalo <- abs(area_empirica - area_teorica)

error_total <- sum(error_intervalo)
error_total



# Normal

m <- 500   #muestras
N <- 5000     # número de repeticiones
med <- 2
vari <- 4

promedios <- replicate(N, {
  muestra <- rnorm(m,mean=med, sd= sqrt(vari))
  mean(muestra)
})

# Calcular media y desviación estándar teóricas de la Normañ

mu <- mean(promedios)
vari <- var(promedios)
promEst <- (promedios-mu) / sqrt(vari)

out <- hist(promEst, breaks = 16, plot = TRUE, main = "Normal estandarizadas")

ancho <- diff(out$breaks)

area_empirica <- out$density * ancho

area_teorica <- pnorm(out$breaks[-1]) - pnorm(out$breaks[-length(out$breaks)])

error_intervalo <- abs(area_empirica - area_teorica)

error_total <- sum(error_intervalo)
error_total


# GAMMA


m <- 500   #muestras
N <- 5000     # número de repeticiones
alfa <- 5
beta <- 5



promedios <- replicate(N, {
  muestra <- rgamma(m,shape=alfa, scale= beta)
  mean(muestra)
})

# Calcular media y desviación estándar teóricas de la Gamma

mu <- mean(promedios)
vari <- var(promedios)
promEst <- (promedios-mu) / sqrt(vari)



out <- hist(promEst, breaks = 16, plot = TRUE, main = "GAMMA estandarizadas")

ancho <- diff(out$breaks)

area_empirica <- out$density * ancho

area_teorica <- pnorm(out$breaks[-1]) - pnorm(out$breaks[-length(out$breaks)])

error_intervalo <- abs(area_empirica - area_teorica)

error_total <- sum(error_intervalo)
error_total



# Beta


m <- 500   #muestras
N <- 5000     # número de repeticiones
t1 <- 3
t2 <- 1/3

promedios <- replicate(N, {
  muestra <- rbeta(m,shape1= t1, shape2 = t2)
  mean(muestra)
})

# Calcular media y desviación estándar teóricas de la Beta

mu <- mean(promedios)
vari <- var(promedios)
promEst <- (promedios-mu) / sqrt(vari)

out <- hist(promEst, breaks = 16, plot = TRUE, main = "Beta estandarizadas")

ancho <- diff(out$breaks)

area_empirica <- out$density * ancho

area_teorica <- pnorm(out$breaks[-1]) - pnorm(out$breaks[-length(out$breaks)])

error_intervalo <- abs(area_empirica - area_teorica)

error_total <- sum(error_intervalo)
error_total




