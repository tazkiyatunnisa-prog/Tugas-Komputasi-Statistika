# Nama : Tazkiyatunnisa Rahadian
# NIM  : 3338250029
# Tugas 5 Komputasi Statistika

# Soal 1: Sebaran Eksponensial
# Rata-rata waktu tunggu = 5 menit

lambda <- 1/5

# P(X > 5)
p <- pexp(5, rate = lambda, lower.tail = FALSE)
p


# Soal 2: Sebaran Uniform
# Waktu kedatangan kereta antara 07.00-07.20

a <- 0
b <- 20

# Varians
var_waktu <- (b - a)^2 / 12
var_waktu


# Soal 3: Sebaran Eksponensial
# Rata-rata masa pakai sensor = 10 tahun

lambda <- 1/10

# P(X < 5)
p_values <- pexp(5, rate = lambda)
p_values


# Soal 4: Distribusi Normal
# Rata-rata berat kopi = 250 gram
# Simpangan baku = 5 gram

mu <- 250
sigma <- 5

# P(X < 240)
p_values <- pnorm(240, mean = mu, sd = sigma)

# Menampilkan hasil
p_values