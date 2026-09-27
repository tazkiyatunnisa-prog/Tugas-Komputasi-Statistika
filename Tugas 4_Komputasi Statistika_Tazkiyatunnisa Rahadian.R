# Nama : Tazkiyatunnisa Rahadian
# NIM  : 3338250029
# Tugas 4 Komputasi Statistika

#Soal 1
lambda <- 3

# Hitung P(X >= 5) = 1 - P(X <= 4)
p_ge_5 <- 1 - ppois(4, lambda)
cat("Peluang minimal 5 pelanggan datang per jam P(X >= 5):", p_ge_5, "\n")

# Visualisasi PMF Poisson(lambda = 3)
x1 <- 0:12
pmf1 <- dpois(x1, lambda)
plot(x1, pmf1, type = "h", lwd = 3, col = "maroon",
     main = expression(paste("Sebaran Poisson (", lambda, " = 3)")),
     xlab = "Jumlah pelanggan (k)", 
     ylab = "P(X = k)")


#soal 2
N <- 100    # Ukuran populasi total
K <- 20     # Jumlah sukses di populasi (bola merah)
n <- 10     # Ukuran sampel yang diambil

# Domain k (banyaknya sukses yang mungkin terambil)
k <- seq(from = max(0, n + K - N), to = min(n, K))

# Tabel PMF Hipergeometrik
pmf2 <- dhyper(k, m = K, n = N - K, k = n)
tabel_hiper <- data.frame(Bola_Merah = k, Probabilitas = pmf2)
print(tabel_hiper)

# Visualisasi PMF Hipergeometrik
plot(k, pmf2, type = "h", lwd = 3, col = "purple",
     main = paste0("Hypergeometric(N=", N, ", K=", K, ", n=", n, ")"),
     xlab = "Jumlah bola merah terambil (k)", 
     ylab = "P(X = k)")


#Soal 3
set.seed(2025)

n_binom <- 15
p_binom <- 0.4
m_sim   <- 1000

# Simulasi 1.000 percobaan Binomial
simulasi <- rbinom(m_sim, size = n_binom, prob = p_binom)

# Plot Histogram Simulasi (Peluang Empiris)
hist(simulasi, 
     breaks = seq(-0.5, n_binom + 0.5, by = 1), 
     probability = TRUE, 
     col = "pink",
     main = "Perbandingan Simulasi Binomial vs PMF Teoretis",
     xlab = "Jumlah Sukses (k)", 
     ylab = "Probabilitas / Density")

# Hitung dan tambahkan PMF Teoretis di atas histogram
x3 <- 0:n_binom
pmf3 <- dbinom(x3, size = n_binom, prob = p_binom)
lines(x3, pmf3, type = "b", pch = 16, col = "darkred", lwd = 2)

# Tambahkan Legenda
legend("topright", 
       legend = c("Simulasi 1.000 Sample", "PMF Teoretis"),
       fill = c("pink", NA), 
       col = c(NA, "darkred"), 
       lwd = c(NA, 2), 
       pch = c(NA, 16))