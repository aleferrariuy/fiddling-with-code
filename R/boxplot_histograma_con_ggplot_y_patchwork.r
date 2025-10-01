library(ggplot2)
library(patchwork)

# Datos
datos <- data.frame(valores = c(6, 8, 9, 10, 12))

# Boxplot
g1 <- ggplot(datos, aes(x = "", y = valores)) +
  geom_boxplot(fill = "skyblue", width = 0.3) +
  labs(title = "Boxplot", y = "Valores") +
  theme_minimal() +
  theme(axis.title.x = element_blank(), axis.text.x = element_blank())

# Histograma
g2 <- ggplot(datos, aes(x = valores)) +
  geom_histogram(binwidth = 1, fill = "lightblue", color = "black") +
  labs(title = "Histograma", x = "Valores", y = "Frecuencia") +
  theme_minimal()

# Combinar
g1 / g2 + plot_annotation(title = "Distribución de datos: Boxplot + Histograma")
