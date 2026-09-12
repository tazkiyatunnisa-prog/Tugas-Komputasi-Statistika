# Nama : Tazkiyatunnisa Rahadian
# NIM  : 3338250029
# Tugas 2 Komputasi Statistika

# Membuat Library & Data
library(dplyr)
data(iris)

# 1. Mengakses variabel Sepal.Length
iris$Sepal.Length

# 2. Tipe data tiap kolom
sapply(iris, class)

# 3. Membuat Variabel Baru 'turunan' dari Sepal.Width
iris <- iris %>%
  mutate(turunan = ifelse(Sepal.Width > 3, "Besar", "Kecil"))

# Menampilkan 6 baris pertama hasil pembuatan variabel
head(iris[, c("Sepal.Width", "turunan")])

# 4. Mengubah Nama Variabel 'turunan' Menjadi 'sepal'
iris <- iris %>%
  rename(sepal = turunan)

# Cek hasil perubahan nama kolom
head(iris)

# 5. Ambil Data dengan sepal == 'Besar' dari Species == 'virginica'
virginica_besar <- iris %>%
  filter(sepal == "Besar" & Species == "virginica")

print(virginica_besar)

# 6. Cek Jumlah Species dalam Data
table(iris$Species)

# 7. Pecah Data Iris Menjadi 3 Data Frame Per Species
iris_setosa     <- iris %>% filter(Species == "setosa")
iris_versicolor <- iris %>% filter(Species == "versicolor")
iris_virginica  <- iris %>% filter(Species == "virginica")

# 8. Mengurutkan Setiap Data Frame Berdasarkan Sepal.Width (Ascending)
iris_setosa <- iris_setosa[order(iris_setosa$Sepal.Width), ]
iris_setosa

iris_versicolor <- iris_versicolor[order(iris_versicolor$Sepal.Width), ]
iris_versicolor

iris_virginica <- iris_virginica[order(iris_virginica$Sepal.Width), ]
iris_virginica