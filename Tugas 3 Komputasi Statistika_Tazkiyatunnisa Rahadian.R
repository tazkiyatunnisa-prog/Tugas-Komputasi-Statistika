# Nama : Tazkiyatunnisa Rahadian
# NIM  : 3338250029
# Tugas 2 Komputasi Statistika

# 1. Membuka data airquality
data("airquality")

# 2. Histogram & Density Wind
 # Density wind
wind_dens <- density(airquality$Wind, na.rm = TRUE)

 # Histogram
hist(airquality$Wind, 
     probability = TRUE, 
     col = "pink", 
     border = "white",
     main = "Histogram & Density Plot Kecepatan Angin (Wind)",
     xlab = "Wind (mph)", 
     ylab = "Density",
     ylim = c(0, max(wind_dens$y) * 1.2))

lines(wind_dens, col = "darkred", lwd = 2)
rug(airquality$Wind)


# 3. Stem and Leaf Wind & Boxplot Wind
 # Stem and Leaf Wind
stem(airquality$Wind)

 # Boxplot Wind
boxplot(airquality$Wind,
        main = "Boxplot Wind",
        xlab = "Wind (mph)",
        col = "pink",
        horizontal = TRUE)


# 4. Scatter Plot: Wind vs Temp
plot(Wind ~ Temp, data = airquality,
     pch = 16, 
     col = "pink",
     main = "Scatterplot: Kecepatan Angin vs Suhu Udara",
     xlab = "Temperature (°F)", 
     ylab = "Wind Speed (mph)")

abline(lm(Wind ~ Temp, data = airquality), col = "darkred", lwd = 2, lty = 2)
rug(airquality$Temp, side = 1)
rug(airquality$Wind, side = 2)
