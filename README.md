# Tugas Praktikum 2 - Blok Prosedural MySQL

##  Anggota Kelompok
- Muhammad Mahruf (IK2411061)
- Fauzan Azima (IK2411039)
- Gefran (IK2411029)

##  Dosen Pengampu
Abdul Malik, S.Kom., M.Cs.

---

##  Deskripsi Singkat
Program ini dibuat untuk memahami konsep blok prosedural pada MySQL menggunakan stored procedure. 
Data mahasiswa diproses menggunakan variabel dan kondisi (IF), kemudian hasilnya ditampilkan dengan SELECT.

---

##  Tujuan
- Memahami penggunaan stored procedure di MySQL  
- Menggunakan variabel dengan DECLARE  
- Menerapkan logika IF  
- Menampilkan hasil menggunakan SELECT  

---

##  Struktur Program

### 🔹 Bagian A – Identitas Mahasiswa
Menampilkan data mahasiswa seperti nama, NIM, program studi, dan semester.

### 🔹 Bagian B – Validasi Akademik
Melakukan pengecekan:
- Status pembayaran  
- Jumlah SKS  
- IPK  

---

### 🔹 Bagian C – Kelayakan KRS
Menentukan apakah mahasiswa layak mengambil KRS atau tidak.

---

### 🔹 Bagian D – Perbandingan Mahasiswa
Membandingkan dua mahasiswa berdasarkan IPK dan SKS.

---

##  Skenario Pengujian

1. Data Valid  
   - Status: LUNAS  
   - SKS: > 0  
   - Hasil: Layak  

2. Tidak Valid (Status)  
   - Status: BELUM  
   - Hasil: Tidak Layak  

3. Tidak Valid (SKS)  
   - SKS: 0  
   - Hasil: Tidak Layak  

---

##  Cara Kerja Program
Program berjalan dengan:
1. DECLARE variabel  
2. Mengisi nilai  
3. IF untuk logika  
4. SELECT untuk output  

---

##  Struktur Repository

    tugaspraktikum1-blokprosedural-kelompok_mahruf
    │
    ├── README.md
    ├── program.sql
    ├── laporan.pdf
    └── screenshot/
        ├── bagian_a.png
        ├── bagian_b.png
        ├── c_valid.png
        ├── c_tidak_valid1.png
        ├── c_tidak_valid2.png
        └── bagian_d.png

##  Dokumentasi
Hasil eksekusi program dapat dilihat pada folder `screenshot/`.

---

##  Kesimpulan
Program ini berhasil digunakan untuk memproses dan mengevaluasi data mahasiswa menggunakan konsep blok prosedural di MySQL dengan memanfaatkan variabel dan logika kondisi.
