#TUGAS

# 1. Vector Numeric
vector_numeric <- c(7.5, 14.7, 20.5, 38.2, 52.8) 
vector_numeric

# 2. Vector Integer
vector_integer <- c(1L, 2L, 3L, 4L, 5L)
vector_integer

# 3. Vector Logical 
vector_logical <- c(TRUE, FALSE, TRUE, TRUE, FALSE) 
vector_logical

# 4. Vector Character 
vector_character <- c("Rara", "Riri", "Rere") 
vector_character

# 5. Matrix 4 x 4 
matrix_4x4 <- matrix(
  c(1, 2, 3, 4,
    5, 6, 7, 8,
    9, 10, 11, 12,
    13, 14, 15, 16),
  nrow = 4,
  ncol = 4,
  byrow = TRUE )
matrix_4x4

# 6. Array 4 dimensi 
array_4d <- array(
  1:16,
  dim = c(2, 2, 2, 2) 
  ) 
array_4d

# 7. Data frame 4 kolom
nilai_akhir<- data.frame(
  nama = c("Rara", "Riri", "Ruru", "Rere"),
  nilai = c(95.5, 90.0, 78.5, 88.0),
  lulus = c(TRUE, TRUE, FALSE, TRUE),
  hadir = c(TRUE, TRUE, TRUE, FALSE) )
nilai_akhir

# 8. Membuat list
mylist <- list(
  VektorBaris = c(6, 10, 15, 19),
  VektorKolom = matrix(c(4, 8, 13, 18), ncol = 1),
  Matriks4x4 = matrix(3:18, nrow = 4, ncol = 4, byrow = TRUE),
  DataFrame = data.frame(
    Nama = c("Dimas", "Alya", "Rafi", "Nanda"),
    Nilai = c(82.4, 91.7, 79.5, 88.6),
    Hadir = c(TRUE, TRUE, FALSE, TRUE),
    Remedial = c(TRUE, FALSE, TRUE, FALSE)
  ),
  isi = list(
    Matriks4x4 = matrix(25:40, nrow = 4, ncol = 4, byrow = TRUE),
    Array4d = array(1:32, dim = c(2, 2, 2, 4)),
    DataFrame = data.frame(
      Kode = c("B11", "B22", "B33", "B44"),
      Skor = c(81.5, 89.3, 94.1, 76.8),
      Terdaftar = c(TRUE, FALSE, TRUE, TRUE),
      Lulus = c(TRUE, TRUE, TRUE, FALSE)
    ),
    VektorBaris = c(7, 12, 16, 21)
  )
)
mylist