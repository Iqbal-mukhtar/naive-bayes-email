# Klasifikasi Spam Email menggunakan Metode Naive Bayes

Proyek ini adalah aplikasi berbasis web yang dirancang untuk mengklasifikasikan pesan email ke dalam kategori **Ham** (bukan spam) atau **Spam** menggunakan algoritma **Naive Bayes Classifier**. Aplikasi ini dibangun menggunakan framework **CodeIgniter 3** dan menggunakan **Grocery CRUD** untuk manajemen dataset yang dinamis.

---

## 🛠️ Fitur Utama

1. **Dashboard**: Ringkasan data dan pengantar sistem klasifikasi.
2. **Manajemen Dataset**: Kelola data email latih (tambah, ubah, hapus) menggunakan antarmuka Grocery CRUD yang dinamis.
3. **Initial Process (Preprocessing)**: Visualisasi langkah-langkah pembersihan teks (*preprocessing*) sebelum masuk ke perhitungan klasifikasi, meliputi:
   - **Case Folding**: Mengubah seluruh teks menjadi huruf kecil (lowercase).
   - **Stopword Removal**: Menghapus kata-kata umum yang tidak memiliki pengaruh besar dalam klasifikasi (seperti *the*, *der*, *die*, *das*).
   - **Tokenisasi & Karakter Spesial**: Menghapus simbol/angka dan memecah teks menjadi potongan kata (token).
4. **Performance (Pengujian Akurasi)**: Fasilitas untuk memisahkan data menjadi data training dan data testing secara otomatis berdasarkan persentase tertentu untuk mengukur nilai akurasi klasifikasi.
5. **Prediksi**: Uji coba klasifikasi secara real-time dengan memasukkan subjek dan isi email kustom untuk memprediksi apakah email tersebut tergolong *ham* atau *spam*.

---

## 💻 Teknologi yang Digunakan

- **Bahasa Pemrograman**: PHP (versi 7.4 disarankan)
- **Framework**: CodeIgniter 3
- **Library CRUD**: Standalone Grocery CRUD (Enterprise/Community)
- **Database**: MySQL / MariaDB
- **Engine Naive Bayes**: PHP Library `Niiknow/Bayes` (terletak di `./nbtc-lib/`)
- **Desain UI**: Bootstrap v4 dengan tema Dashboard Admin modern

---

## ⚙️ Cara Instalasi & Konfigurasi

### 1. Prasyarat
Pastikan server lokal Anda telah mendukung:
- **PHP** versi 7.4 atau versi 8.x yang kompatibel dengan CodeIgniter 3.
- **MySQL / MariaDB** (melalui XAMPP, Laragon, dll).

### 2. Impor Database
1. Buat database baru bernama `mlc_nbtc_iqbal` di phpMyAdmin Anda.
2. Impor berkas database [db.sql](db.sql) ke dalam database tersebut.

### 3. Konfigurasi Proyek
Sesuaikan konfigurasi lokal Anda pada berkas-berkas berikut:

- **Konfigurasi Database Utama**:
  Buka berkas [database.php](database.php) di root proyek dan [application/config/database.php](application/config/database.php), sesuaikan kredensial MySQL lokal Anda:
  ```php
  'hostname' => 'localhost',
  'database' => 'mlc_nbtc_iqbal',
  'username' => 'root',
  'password' => '', // isi password database jika ada
  ```

- **Konfigurasi Base URL**:
  Buka berkas [application/config/config.php](application/config/config.php) baris ke-26, dan pastikan nilainya menunjuk ke lokasi folder lokal proyek Anda:
  ```php
  $config['base_url'] = 'http://127.0.0.1/ml/custom/naivebayes-textmining-iqbal/';
  ```

- **Konfigurasi Aset (Grocery CRUD)**:
  Buka berkas [config.php](config.php) di root proyek, pastikan nilai `'assets_folder'` sesuai dengan alamat host Anda:
  ```php
  'assets_folder' => 'http://'.$_SERVER['HTTP_HOST'].'/ml/custom/naivebayes-textmining-iqbal/assets/grocery-crud/',
  ```

---

## 🚀 Cara Menjalankan & Penggunaan

1. Buka peramban web (*browser*) Anda lalu akses URL proyek:
   ```text
   http://127.0.0.1/ml/custom/naivebayes-textmining-iqbal/
   ```
2. **Kredensial Login**:
   - **Username**: `admin`
   - **Password**: `admin`
3. Masuk ke menu **Naive Bayes Menu** pada bilah samping kiri untuk mengakses tahapan klasifikasi:
   - Pilih **1. Dataset** untuk melihat dan mengelola dataset email.
   - Pilih **2. Initial Process** untuk mengamati tahap preprocessing kata.
   - Pilih **3. Performance** untuk menguji persentase akurasi model klasifikasi.
   - Pilih **4. Prediksi** untuk menguji teks email baru.

---

## 📖 Cara Kerja Algoritma Naive Bayes dalam Proyek Ini

Algoritma Naive Bayes memprediksi kelas atau kategori dokumen berdasarkan frekuensi kata-kata yang muncul dalam dokumen latih (*training data*). Alur perhitungan matematika yang dilakukan di balik sistem ini adalah:

1. **Prior Probability $P(C)$**:
   Menghitung probabilitas awal dari masing-masing kategori tanpa melihat isi teks email:
   $$P(\text{Spam}) = \frac{\text{Jumlah Email Spam}}{\text{Total Semua Email}}$$
   $$P(\text{Ham}) = \frac{\text{Jumlah Email Ham}}{\text{Total Semua Email}}$$

2. **Likelihood $P(W|C)$**:
   Menghitung peluang kemunculan suatu kata ($W$) di dalam masing-masing kategori ($C$):
   $$P(W|\text{Spam}) = \frac{\text{Jumlah kemunculan kata } W \text{ di kategori Spam}}{\text{Total seluruh kata di kategori Spam}}$$

3. **Posterior Probability $P(C|W_1, W_2, \dots, W_n)$**:
   Menggabungkan nilai probabilitas kata-kata dalam pesan baru untuk membandingkan kategori mana yang memiliki nilai probabilitas tertinggi:
   $$P(\text{Spam}|W_1, W_2, \dots, W_n) \propto P(\text{Spam}) \times \prod_{i=1}^{n} P(W_i|\text{Spam})$$
   $$P(\text{Ham}|W_1, W_2, \dots, W_n) \propto P(\text{Ham}) \times \prod_{i=1}^{n} P(W_i|\text{Ham})$$

Email baru akan dimasukkan ke dalam kelas kategori yang memiliki nilai posterior tertinggi.
