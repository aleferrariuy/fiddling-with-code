# Datos
datos <- c(6, 8, 9, 10, 12)

# Histograma simple
hist(datos,
     col = "skyblue",
     main = "Histograma de los datos",
     xlab = "Valores",
     ylab = "Frecuencia",
     breaks = seq(5.5, 12.5, by=1),
     right = FALSE)
