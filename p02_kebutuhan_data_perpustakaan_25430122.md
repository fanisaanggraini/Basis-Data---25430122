# DOKUMEN KEBUTUHAN DATA

## PERPUSTAKAAN FANISHELF (PERPUS FAN)

- **Nama:** Fanisa Anggraini 
- **NIM:** 25430122
- **Kelas:** C
- **Tanggal:** 09/10/2026
- **Dosen:** Dedi Irawan, S.Kom., M.T.I.
- **Jenis Dokumen:** Studi Kasus Perpus

## 1. Latar Belakang dan Aktivitas Organisasi

Perpustakaan FaniShelf merupakan perpustakaan sekolah yang menyediakan berbagai koleksi buku untuk mendukung kegiatan belajar siswa. Dalam kegiatan sehari-hari, perpustakaan melayani pendaftaran anggota, pengelolaan koleksi buku, peminjaman, dan pengembalian buku.
Setiap kegiatan tersebut membutuhkan pencatatan data yang teratur agar informasi anggota, ketersediaan buku, dan riwayat peminjaman dapat diketahui dengan mudah. Perpustakaan juga memerlukan pencatatan tanggal peminjaman dan pengembalian untuk menentukan keterlambatan serta menghitung denda apabila buku dikembalikan melewati batas waktu.
Oleh karena itu, dokumen kebutuhan data ini disusun untuk mengidentifikasi aktivitas, pihak yang terlibat, aturan, dan informasi yang diperlukan dalam pengelolaan data Perpustakaan FaniShelf. Hasil identifikasi tersebut akan menjadi dasar dalam merancang basis data yang sesuai dengan kebutuhan perpustakaan.

## 2. Aktor dan Proses Bisnis

Perpustakaan FaniShelf memiliki beberapa kegiatan utama, mulai dari pendaftaran anggota hingga pengelolaan koleksi buku, peminjaman, pengembalian, dan pencatatan denda. Setiap kegiatan melibatkan aktor yang memiliki tugas dan tanggung jawab berbeda. Identifikasi aktor dan proses bisnis dilakukan untuk mengetahui kegiatan yang perlu didukung oleh basis data perpustakaan.

### 2.1 Tabel Aktor

| No. | Aktor | Tanggung Jawab |
|---|---|---|
| 1 | Petugas Perpustakaan | Mendaftarkan anggota, mengelola data koleksi buku dan eksemplar, mencatat transaksi peminjaman dan pengembalian, serta mengelola denda dan pembayaran |
| 2 | Siswa | Mendaftar sebagai anggota, mencari informasi buku, meminjam dan mengembalikan buku, serta menyelesaikan pembayaran denda apabila terlambat |
| 3 | Kepala Perpustakaan | Mengelola data petugas, memantau kegiatan perpustakaan, dan menggunakan laporan untuk mengevaluasi layanan |

### 2.2 Tabel Proses Bisnis

| Kode | Proses Bisnis | Aktor | Pemicu |
|---|---|---|---|
| PB-01 | Mendaftarkan anggota perpustakaan | Petugas Perpustakaan dan Siswa | Siswa ingin menjadi anggota perpustakaan |
| PB-02 | Mengelola data koleksi buku dan eksemplar | Petugas Perpustakaan | Buku baru diterima, data koleksi perlu diperbarui, atau kondisi dan ketersediaan eksemplar berubah |
| PB-03 | Melayani peminjaman buku | Petugas Perpustakaan dan Siswa | Siswa ingin meminjam buku yang tersedia |
| PB-04 | Melayani pengembalian buku | Petugas Perpustakaan dan Siswa | Siswa mengembalikan buku yang dipinjam |
| PB-05 | Mengelola denda keterlambatan dan pembayarannya | Petugas Perpustakaan dan Siswa | Buku dikembalikan melewati batas waktu atau anggota membayar denda |
| PB-06 | Menyusun laporan kegiatan perpustakaan | Kepala Perpustakaan | Laporan diperlukan untuk memantau kegiatan dan mengevaluasi layanan perpustakaan |
| PB-07 | Mengelola data petugas | Kepala Perpustakaan | Petugas baru mulai bertugas atau data petugas perlu diperbarui |

## 3. Dokumen Sumber yang Dianalisis

Dokumen sumber digunakan sebagai acuan untuk mengetahui informasi yang dibutuhkan dalam kegiatan Perpustakaan FaniShelf. Dokumen tersebut dirancang berdasarkan aktivitas pendaftaran anggota, peminjaman buku, dan pembayaran denda keterlambatan. Setiap dokumen dianalisis untuk menentukan elemen data yang perlu dicatat dan dikelola dalam basis data.

### 3.1 Daftar Dokumen Sumber

| No. | Nama Dokumen                 | Kegunaan                                                                                                  | Aktor yang Menggunakan         |
| --- | ---------------------------- | --------------------------------------------------------------------------------------------------------- | ------------------------------ |
| 1   | Formulir Pendaftaran Anggota | Mencatat identitas siswa yang mendaftar sebagai anggota perpustakaan                                      | Siswa dan Petugas Perpustakaan |
| 2   | Slip Peminjaman Buku         | Mencatat transaksi peminjaman, buku yang dipinjam, tanggal pinjam, dan batas pengembalian                 | Siswa dan Petugas Perpustakaan |
| 3   | Bukti Pembayaran Denda       | Mencatat denda yang harus dibayar dan status pembayarannya ketika terjadi keterlambatan pengembalian buku | Siswa dan Petugas Perpustakaan |

### 3.2 Analisis Formulir Pendaftaran Anggota

Formulir ini digunakan untuk mencatat data siswa yang akan menjadi anggota Perpustakaan FaniShelf.

**Contoh formulir fiktif:**

| Elemen Data         | Contoh Isi   |
| ------------------- | ------------ |
| Nomor Anggota       | AG-0001      |
| NIS                 | 12345        |
| Nama Siswa          | Syalala      |
| Kelas               | XI-A         |
| Nomor HP            | 081234567890 |
| Tanggal Pendaftaran | 10-10-2026   |
| Status Anggota      | Aktif        |

**Hasil analisis:** Data nomor anggota digunakan sebagai identitas unik anggota perpustakaan. NIS, nama siswa, kelas, dan nomor HP digunakan untuk mengenali serta menghubungi anggota. Status anggota diperlukan untuk mengetahui apakah siswa masih terdaftar sebagai anggota aktif.

### 3.3 Analisis Slip Peminjaman Buku

Slip peminjaman digunakan sebagai bukti pencatatan transaksi ketika siswa meminjam buku.

**Contoh slip peminjaman fiktif:**

| Elemen Data         | Contoh Isi           |
| ------------------- | -------------------- |
| Nomor Peminjaman    | PJ-0001              |
| Nomor Anggota       | AG-0001              |
| Nama Siswa          | Syalala              |
| Kode Eksemplar Buku | EK-0001              |
| Judul Buku          | Dasar-Dasar Komputer |
| Tanggal Peminjaman  | 10-10-2026           |
| Batas Pengembalian  | 24-10-2026           |
| Status Peminjaman   | Dipinjam             |

**Hasil analisis:** Nomor peminjaman digunakan untuk membedakan setiap transaksi. Nomor anggota menghubungkan transaksi dengan siswa yang meminjam, sedangkan kode eksemplar menunjukkan salinan buku tertentu yang dipinjam. Tanggal peminjaman dan batas pengembalian digunakan untuk memantau lama peminjaman serta menentukan apakah terjadi keterlambatan.
Satu judul buku dapat memiliki beberapa eksemplar. Oleh karena itu, pencatatan kode eksemplar diperlukan agar setiap salinan buku dapat dibedakan dan status ketersediaannya dapat dikelola dengan tepat.

### 3.4 Analisis Catatan Denda Keterlambatan

Catatan denda keterlambatan digunakan untuk mencatat denda yang timbul ketika anggota mengembalikan buku melewati batas waktu peminjaman. Dokumen ini membantu petugas mengetahui buku yang terlambat, jumlah denda yang harus dibayar, dan status pembayarannya.

**Contoh catatan denda fiktif:**

| Elemen Data           | Contoh Isi           |
| --------------------- | -------------------- |
| Nomor Denda           | DN-0001              |
| ID Detail Peminjaman  | DT-0001              |
| Nomor Peminjaman      | PJ-0001              |
| Nomor Anggota         | AG-0001              |
| Kode Eksemplar Buku   | EK-0001              |
| Judul Buku            | Dasar-Dasar Komputer |
| Batas Pengembalian    | 2026-10-24           |
| Tanggal Pengembalian  | 2026-10-27           |
| Jumlah Hari Terlambat | 3 hari               |
| Tarif Denda per Hari  | Rp5.000              |
| Total Denda           | Rp15.000             |
| Tanggal Pembayaran    | Belum ada            |
| Status Pembayaran     | Belum Dibayar        |

**Hasil analisis:** Nomor denda digunakan sebagai identitas unik catatan denda. ID detail peminjaman dan kode eksemplar digunakan untuk mengidentifikasi buku yang menimbulkan denda, sedangkan nomor peminjaman dan nomor anggota menghubungkan catatan tersebut dengan transaksi serta anggota yang bersangkutan.
Berdasarkan contoh tersebut, buku dikembalikan tiga hari setelah batas pengembalian. Dengan tarif denda Rp5.000 per hari, total denda adalah 3 × Rp5.000 = Rp15.000. Karena pembayaran belum dilakukan, tanggal pembayaran belum diisi dan statusnya tetap Belum Dibayar.

## 4. Entitas Kandidat dan Elemen Data

Entitas kandidat merupakan kelompok data yang dibutuhkan untuk mendukung kegiatan Perpustakaan FaniShelf. Penentuannya dilakukan berdasarkan proses bisnis serta dokumen sumber yang telah dianalisis sebelumnya. Setiap entitas memiliki elemen data yang berfungsi untuk menyimpan informasi tertentu.

Dalam rancangan ini, data judul buku dipisahkan dari data eksemplar buku. Pemisahan tersebut diperlukan karena satu judul buku dapat memiliki beberapa eksemplar atau salinan fisik dengan kode dan status ketersediaan yang berbeda.

### 4.1 Tabel Entitas Kandidat

| No. | Entitas Kandidat | Elemen Data Utama | Sumber Data |
|---|---|---|---|
| 1 | Anggota | Nomor anggota, NIS, nama siswa, kelas, nomor HP, tanggal pendaftaran, status anggota | Formulir pendaftaran anggota |
| 2 | Petugas | ID petugas, nama petugas, jabatan, status petugas | Data petugas perpustakaan |
| 3 | Buku | Kode buku, ISBN, judul, penulis, penerbit, tahun terbit, kategori | Daftar koleksi buku |
| 4 | Eksemplar Buku | Kode eksemplar, kode buku, lokasi rak, kondisi buku, status ketersediaan | Daftar inventaris buku |
| 5 | Peminjaman | Nomor peminjaman, nomor anggota, ID petugas, tanggal peminjaman, batas pengembalian, status peminjaman | Slip peminjaman buku |
| 6 | Detail Peminjaman | ID detail peminjaman, nomor peminjaman, kode eksemplar, tanggal pengembalian, kondisi saat dikembalikan | Slip peminjaman dan catatan pengembalian |
| 7 | Denda | Nomor denda, ID detail peminjaman, jumlah hari keterlambatan, tarif denda per hari, total denda, tanggal pembayaran, status pembayaran | Bukti pembayaran denda |

### 4.2 Penjelasan Setiap Entitas

**1. Anggota**

Entitas Anggota digunakan untuk menyimpan identitas siswa yang terdaftar di Perpustakaan FaniShelf. Nomor anggota menjadi identitas khusus dalam perpustakaan, sedangkan NIS, nama, kelas, dan nomor HP digunakan untuk mengenali anggota dan mendukung pelayanan.

**2. Petugas**

Entitas Petugas menyimpan informasi mengenai petugas yang menjalankan kegiatan perpustakaan. Data ini digunakan untuk mengetahui petugas yang bertanggung jawab dalam pendaftaran anggota, pencatatan koleksi, peminjaman, pengembalian, dan pengelolaan denda.

**3. Buku**

Entitas Buku menyimpan informasi mengenai judul dan identitas koleksi buku, seperti ISBN, judul, penulis, penerbit, tahun terbit, dan kategori. Data ini membantu petugas mengelola katalog serta memudahkan pencarian buku.

**4. Eksemplar Buku**

Entitas Eksemplar Buku digunakan untuk mencatat setiap salinan fisik dari suatu judul buku. Kode eksemplar membedakan satu salinan dengan salinan lainnya. Lokasi rak, kondisi, dan status ketersediaan dicatat agar petugas dapat mengetahui keberadaan serta kondisi setiap buku.

**5. Peminjaman**

Entitas Peminjaman menyimpan informasi utama mengenai transaksi peminjaman buku. Data ini mencakup anggota yang meminjam, petugas yang melayani, tanggal peminjaman, batas pengembalian, dan status transaksi. Lama peminjaman yang digunakan dalam rancangan ini adalah maksimal 14 hari.

**6. Detail Peminjaman**

Entitas Detail Peminjaman mencatat setiap eksemplar yang termasuk dalam suatu transaksi peminjaman. Entitas ini juga digunakan untuk mencatat tanggal pengembalian dan kondisi buku ketika dikembalikan, sehingga setiap buku dapat ditelusuri berdasarkan transaksi yang terkait.

**7. Denda**

Entitas Denda digunakan untuk mencatat denda akibat keterlambatan pengembalian buku. Data yang dicatat meliputi jumlah hari keterlambatan, tarif denda per hari, total denda, tanggal pembayaran, dan status pembayaran. Berdasarkan parameter personal proyek, tarif contoh yang digunakan adalah Rp5.000 per hari keterlambatan.

### 4.3 Hasil Identifikasi

Berdasarkan analisis tersebut, terdapat tujuh entitas kandidat yang akan menjadi dasar dalam perancangan basis data Perpustakaan FaniShelf. Setiap entitas memiliki fungsi yang berbeda, tetapi saling berhubungan dalam mendukung proses pendaftaran anggota, pengelolaan koleksi, peminjaman, pengembalian, dan pencatatan denda. 

## 5. Aturan Bisnis

Aturan bisnis merupakan ketentuan yang digunakan sebagai pedoman dalam pengelolaan data Perpustakaan FaniShelf. Aturan ini disusun berdasarkan proses pendaftaran anggota, pengelolaan buku, peminjaman, pengembalian, dan pembayaran denda. Dengan adanya aturan bisnis, pencatatan data dapat dilakukan secara konsisten dan kesalahan dalam transaksi dapat dikurangi.

### 5.1 Tabel Aturan Bisnis

| Kode | Aturan Bisnis |
|---|---|
| AB-01 | Setiap anggota harus memiliki nomor anggota yang unik dan tidak boleh digunakan oleh anggota lain. |
| AB-02 | Setiap siswa hanya boleh terdaftar menggunakan satu NIS yang unik. |
| AB-03 | Peminjaman buku hanya dapat dilakukan oleh anggota yang berstatus aktif. |
| AB-04 | Setiap transaksi peminjaman harus memiliki nomor peminjaman yang unik serta mencatat anggota dan petugas yang melayani. |
| AB-05 | Jumlah maksimal eksemplar buku dalam satu transaksi peminjaman adalah 7 buku, berdasarkan perhitungan parameter P, yaitu P + 2 = 5 + 2. |
| AB-06 | Buku yang dipinjam harus memiliki eksemplar dengan status tersedia. Eksemplar yang sedang dipinjam tidak boleh dipinjamkan kepada anggota lain sebelum dikembalikan. |
| AB-07 | Batas waktu peminjaman adalah 14 hari sejak tanggal peminjaman. Tanggal batas pengembalian harus dicatat pada transaksi. |
| AB-08 | Pengembalian dinyatakan terlambat apabila tanggal pengembalian melewati tanggal batas pengembalian. Jumlah hari keterlambatan dihitung berdasarkan selisih kedua tanggal tersebut. |
| AB-09 | Denda keterlambatan dikenakan sebesar Rp5.000 per hari, berdasarkan parameter P = 5. Total denda dihitung dari jumlah hari keterlambatan dikalikan tarif denda harian. |
| AB-10 | Setiap denda yang tercatat harus terhubung dengan transaksi peminjaman terkait, serta memiliki status pembayaran agar petugas dapat memantau penyelesaiannya. |
| AB-11 | Setiap eksemplar buku harus memiliki kode eksemplar yang unik agar salinan fisik dari judul yang sama dapat dibedakan. |

### 5.2 Hasil Analisis Aturan Bisnis

Aturan bisnis tersebut memastikan bahwa kegiatan perpustakaan dilakukan sesuai ketentuan yang telah ditetapkan. Nomor anggota, NIS, nomor peminjaman, dan kode eksemplar digunakan untuk membedakan data agar tidak terjadi pencatatan ganda. Pembatasan peminjaman hanya untuk anggota aktif dan eksemplar yang tersedia membantu menjaga ketertiban transaksi.
Batas peminjaman selama 14 hari digunakan untuk menentukan tanggal pengembalian. Apabila buku dikembalikan melewati batas tersebut, sistem dapat menghitung keterlambatan dan menentukan denda berdasarkan tarif Rp5.000 per hari. Pencatatan status pembayaran membantu petugas mengetahui denda yang sudah dibayar maupun yang masih belum diselesaikan.

## 6. Kebutuhan Informasi

Kebutuhan informasi menjelaskan informasi yang perlu diperoleh dari basis data untuk membantu petugas dan kepala Perpustakaan FaniShelf menjalankan tugasnya. Setiap kebutuhan informasi disusun berdasarkan proses bisnis yang telah diidentifikasi, sehingga data yang disimpan dapat digunakan untuk mendukung pelayanan perpustakaan dan pemantauan kegiatan.

### 6.1 Tabel Kebutuhan Informasi

| Kode | Kebutuhan Informasi | Data yang Dibutuhkan | Pengguna |
|---|---|---|---|
| KI-01 | Mengetahui daftar anggota yang masih aktif berdasarkan kelas | Nomor anggota, NIS, nama siswa, kelas, status anggota | Petugas Perpustakaan |
| KI-02 | Mengetahui ketersediaan buku berdasarkan judul atau kategori | Judul buku, penulis, kategori, kode eksemplar, lokasi rak, status ketersediaan | Siswa dan Petugas Perpustakaan |
| KI-03 | Mengetahui daftar peminjaman yang masih berlangsung beserta batas pengembaliannya | Nomor peminjaman, nama anggota, judul buku, tanggal peminjaman, batas pengembalian, status peminjaman | Petugas Perpustakaan |
| KI-04 | Mengetahui anggota yang terlambat mengembalikan buku dan jumlah dendanya | Nama anggota, judul buku, batas pengembalian, tanggal pengembalian, jumlah hari terlambat, total denda | Petugas Perpustakaan |
| KI-05 | Mengetahui daftar denda yang sudah dibayar dan yang belum dibayar | Nomor denda, nama anggota, total denda, tanggal pembayaran, status pembayaran | Petugas Perpustakaan |
| KI-06 | Mengetahui jumlah peminjaman setiap judul buku dalam periode tertentu | Judul buku, jumlah transaksi peminjaman, periode peminjaman | Kepala Perpustakaan |
| KI-07 | Mengetahui riwayat peminjaman dan pengembalian buku milik seorang anggota | Nomor anggota, nama siswa, judul buku, tanggal peminjaman, tanggal pengembalian, status transaksi | Petugas Perpustakaan |

### 6.2 Hasil Analisis Kebutuhan Informasi

Kebutuhan informasi tersebut menunjukkan bahwa data perpustakaan tidak hanya digunakan untuk mencatat anggota dan koleksi buku, tetapi juga untuk memantau transaksi peminjaman, pengembalian, dan pembayaran denda. Petugas dapat menggunakan informasi tersebut untuk memberikan pelayanan sehari-hari, seperti memeriksa ketersediaan buku dan mengetahui peminjaman yang telah melewati batas waktu.

Sementara itu, kepala perpustakaan dapat menggunakan rekapitulasi peminjaman untuk melihat buku yang sering dipinjam dalam periode tertentu. Informasi ini dapat menjadi bahan pertimbangan dalam mengevaluasi layanan dan pengelolaan koleksi buku.
Dengan adanya kebutuhan informasi yang teridentifikasi, rancangan basis data Perpustakaan FaniShelf diharapkan mampu mendukung kegiatan operasional sekaligus menyediakan informasi yang diperlukan untuk pemantauan perpustakaan.

## 7. Matriks CRUD

Matriks CRUD digunakan untuk menunjukkan hubungan antara proses bisnis dengan entitas data yang dikelola oleh Perpustakaan FaniShelf. CRUD merupakan singkatan dari *Create* (membuat data), *Read* (membaca data), *Update* (memperbarui data), dan *Delete* (menghapus data).

Matriks ini disusun berdasarkan tujuh proses bisnis dan tujuh entitas kandidat yang telah diidentifikasi sebelumnya. Tujuannya adalah memastikan setiap entitas memiliki proses yang bertanggung jawab untuk membuat datanya, serta mengetahui proses mana yang membaca atau memperbarui data tersebut.

### 7.1 Matriks CRUD Berdasarkan Proses Bisnis

| Proses Bisnis                                     | Anggota | Petugas | Buku    | Eksemplar Buku | Peminjaman | Detail Peminjaman | Denda   |
| ------------------------------------------------- | ------- | ------- | ------- | -------------- | ---------- | ----------------- | ------- |
| PB-01 Pendaftaran anggota perpustakaan            | C       | -       | -       | -              | -          | -                 | -       |
| PB-02 Pengelolaan data koleksi buku dan eksemplar | -       | -       | C, R, U | C, R, U        | -          | -                 | -       |
| PB-03 Pelayanan peminjaman buku                   | R       | R       | R       | R, U           | C          | C                 | -       |
| PB-04 Pelayanan pengembalian buku                 | R       | R       | R       | R, U           | R, U       | R, U              | -       |
| PB-05 Pengelolaan denda dan pembayarannya         | R       | R       | -       | -              | R          | R                 | C, R, U |
| PB-06 Penyusunan laporan kegiatan perpustakaan    | R       | -       | R       | R              | R          | R                 | R       |
| PB-07 Pengelolaan data petugas                    | -       | C, R, U | -       | -              | -          | -                 | -       |

### 7.2 Keterangan Operasi CRUD

| Kode | Operasi | Penjelasan dan Contoh Penerapan |
|---|---|---|
| C | Create | Membuat data baru, seperti data anggota saat pendaftaran, data buku saat pencatatan koleksi, dan data peminjaman saat transaksi berlangsung. |
| R | Read | Membaca atau menampilkan data, seperti melihat informasi anggota, mencari buku, memeriksa status peminjaman, dan melihat riwayat denda. |
| U | Update | Memperbarui data yang sudah ada, seperti mengubah status ketersediaan buku, mencatat pengembalian, memperbarui status transaksi, dan mencatat pembayaran denda. |
| D | Delete | Menghapus data yang sudah tersimpan. Operasi ini tidak digunakan pada proses bisnis utama dalam rancangan saat ini karena riwayat peminjaman dan pembayaran perlu dipertahankan. |

Tanda `-` menunjukkan bahwa tidak ada operasi CRUD yang dipetakan untuk entitas tersebut pada proses bisnis bersangkutan.

### 7.3 Hasil Analisis Matriks CRUD

Berdasarkan matriks CRUD, ketujuh entitas telah memiliki proses bisnis yang melakukan operasi *Create*. Data Anggota dibuat melalui PB-01, data Buku dan Eksemplar Buku dibuat melalui PB-02, data Peminjaman dan Detail Peminjaman dibuat melalui PB-03, data Denda dibuat melalui PB-05, sedangkan data Petugas dibuat melalui PB-07.

Operasi *Read* digunakan untuk membantu petugas mencari informasi anggota, koleksi buku, transaksi peminjaman, pengembalian, dan denda. Operasi *Update* digunakan ketika terjadi perubahan data, misalnya saat status eksemplar berubah dari tersedia menjadi dipinjam, ketika buku dikembalikan, atau ketika pembayaran denda dicatat.

Operasi *Delete* tidak dipetakan dalam matriks karena penghapusan permanen bukan bagian dari proses bisnis utama yang dirancang. Data historis peminjaman, pengembalian, dan denda tetap dipertahankan agar dapat ditelusuri kembali. Jika data anggota atau petugas tidak lagi aktif, statusnya dapat diperbarui tanpa menghapus riwayat transaksi yang berkaitan.
Dengan demikian, matriks CRUD menghubungkan proses bisnis dengan entitas yang digunakan dan membantu memastikan bahwa setiap entitas memiliki proses pembentukan datanya.
 
## 8. Kamus Data Awal

Kamus data awal digunakan untuk menjelaskan elemen data yang diperlukan dalam setiap entitas Perpustakaan FaniShelf. Setiap elemen dilengkapi dengan arti, contoh nilai, aturan yang harus dipenuhi, dan pihak yang bertanggung jawab. Kamus data ini disusun agar pencatatan informasi memiliki aturan yang jelas dan dapat digunakan sebagai acuan dalam perancangan basis data.

### 8.1 Tabel Kamus Data

| Entitas | Elemen Data | Arti | Contoh | Aturan | Penanggung Jawab |
|---|---|---|---|---|---|
| Anggota | `no_anggota` | Nomor identitas anggota perpustakaan | AG-0001 | Wajib diisi dan unik untuk setiap anggota | Petugas Perpustakaan |
| Anggota | `nis` | Nomor Induk Siswa | 12345 | Wajib diisi dan tidak boleh sama antaranggota | Petugas Perpustakaan |
| Anggota | `nama_siswa` | Nama lengkap siswa | Syalala | Wajib diisi dan tidak boleh kosong | Petugas Perpustakaan |
| Anggota | `kelas` | Kelas siswa saat terdaftar | XI-A | Wajib diisi sesuai data siswa | Petugas Perpustakaan |
| Anggota | `no_hp` | Nomor telepon anggota | 081234567890 | Boleh kosong jika tidak tersedia; akses dibatasi | Petugas Perpustakaan |
| Anggota | `tanggal_pendaftaran` | Tanggal siswa terdaftar | 2026-10-10 | Menggunakan format tanggal yang valid | Petugas Perpustakaan |
| Anggota | `status_anggota` | Status keanggotaan siswa | Aktif | Menggunakan status yang ditetapkan, misalnya Aktif atau Nonaktif | Petugas Perpustakaan |
| Petugas | `id_petugas` | Identitas unik petugas | PT-001 | Wajib diisi dan unik untuk setiap petugas | Kepala Perpustakaan |
| Petugas | `nama_petugas` | Nama lengkap petugas | Rina Sari | Wajib diisi dan tidak boleh kosong | Kepala Perpustakaan |
| Petugas | `jabatan_petugas` | Jabatan petugas di perpustakaan | Petugas Perpustakaan | Diisi sesuai tugas yang diberikan | Kepala Perpustakaan |
| Petugas | `status_petugas` | Status bertugas petugas | Aktif | Menggunakan status yang ditetapkan, misalnya Aktif atau Nonaktif | Kepala Perpustakaan |
| Buku | `kode_buku` | Identitas untuk satu judul buku | BK-0001 | Wajib diisi dan unik untuk setiap judul buku | Petugas Perpustakaan |
| Buku | `isbn` | Nomor standar internasional buku, jika tersedia | 9786020000000 | Mengikuti format ISBN yang valid; boleh kosong jika tidak tersedia | Petugas Perpustakaan |
| Buku | `judul_buku` | Judul koleksi buku | Dasar-Dasar Komputer | Wajib diisi dan tidak boleh kosong | Petugas Perpustakaan |
| Buku | `penulis` | Nama penulis buku | Andi Pratama | Diisi berdasarkan informasi pada buku | Petugas Perpustakaan |
| Buku | `penerbit` | Nama penerbit buku | Penerbit Cendekia | Diisi berdasarkan informasi pada buku | Petugas Perpustakaan |
| Buku | `tahun_terbit` | Tahun penerbitan buku | 2024 | Menggunakan tahun yang valid | Petugas Perpustakaan |
| Buku | `kategori_buku` | Kelompok atau kategori buku | Teknologi | Diisi berdasarkan kategori koleksi | Petugas Perpustakaan |
| Eksemplar Buku | `kode_eksemplar` | Identitas unik setiap salinan fisik buku | EK-0001 | Wajib diisi dan unik untuk setiap eksemplar | Petugas Perpustakaan |
| Eksemplar Buku | `kode_buku` | Kode judul buku yang menjadi induk eksemplar | BK-0001 | Harus merujuk pada `kode_buku` yang terdaftar di entitas Buku | Petugas Perpustakaan |
| Eksemplar Buku | `lokasi_rak` | Lokasi penyimpanan eksemplar | Rak A-01 | Menunjukkan lokasi penyimpanan yang tersedia | Petugas Perpustakaan |
| Eksemplar Buku | `kondisi_buku` | Kondisi fisik eksemplar | Baik | Menggunakan kategori kondisi yang ditetapkan | Petugas Perpustakaan |
| Eksemplar Buku | `status_ketersediaan` | Status ketersediaan eksemplar | Tersedia | Menggunakan status yang konsisten, misalnya Tersedia atau Dipinjam | Petugas Perpustakaan |
| Peminjaman | `no_peminjaman` | Nomor identitas transaksi peminjaman | PJ-0001 | Wajib diisi dan unik untuk setiap transaksi | Petugas Perpustakaan |
| Peminjaman | `no_anggota` | Nomor anggota yang melakukan peminjaman | AG-0001 | Harus merujuk pada anggota yang terdaftar | Petugas Perpustakaan |
| Peminjaman | `id_petugas` | Identitas petugas yang melayani transaksi | PT-001 | Harus merujuk pada petugas yang terdaftar | Petugas Perpustakaan |
| Peminjaman | `tanggal_peminjaman` | Tanggal buku dipinjam | 2026-10-10 | Wajib diisi dengan tanggal yang valid | Petugas Perpustakaan |
| Peminjaman | `batas_pengembalian` | Tanggal batas pengembalian buku | 2026-10-24 | Ditetapkan maksimal 14 hari sejak tanggal peminjaman | Petugas Perpustakaan |
| Peminjaman | `status_peminjaman` | Status transaksi peminjaman | Dipinjam | Menggunakan status yang ditetapkan, misalnya Dipinjam atau Selesai | Petugas Perpustakaan |
| Detail Peminjaman | `id_detail_peminjaman` | Identitas unik baris detail peminjaman | DT-0001 | Wajib diisi dan unik untuk setiap detail | Petugas Perpustakaan |
| Detail Peminjaman | `no_peminjaman` | Nomor transaksi peminjaman yang menaungi detail | PJ-0001 | Harus merujuk pada `no_peminjaman` yang terdaftar di entitas Peminjaman | Petugas Perpustakaan |
| Detail Peminjaman | `kode_eksemplar` | Kode salinan buku yang dipinjam | EK-0001 | Harus merujuk pada eksemplar yang terdaftar | Petugas Perpustakaan |
| Detail Peminjaman | `tanggal_pengembalian` | Tanggal eksemplar dikembalikan | 2026-10-27 | Diisi saat pengembalian dilakukan dan harus berupa tanggal yang valid | Petugas Perpustakaan |
| Detail Peminjaman | `kondisi_saat_dikembalikan` | Kondisi fisik buku saat dikembalikan | Baik | Dicatat berdasarkan pemeriksaan petugas | Petugas Perpustakaan |
| Denda | `no_denda` | Identitas unik pencatatan denda | DN-0001 | Wajib diisi dan unik untuk setiap catatan denda | Petugas Perpustakaan |
| Denda | `id_detail_peminjaman` | Detail peminjaman yang menimbulkan denda | DT-0001 | Harus merujuk pada detail peminjaman yang terkait | Petugas Perpustakaan |
| Denda | `jumlah_hari_terlambat` | Jumlah hari keterlambatan pengembalian | 3 | Bilangan bulat nol atau lebih, dihitung berdasarkan tanggal pengembalian dan batas pengembalian | Petugas Perpustakaan |
| Denda | `tarif_denda_harian` | Tarif denda untuk setiap hari keterlambatan | Rp5.000 | Mengikuti parameter proyek, yaitu P = 5 dalam ribuan rupiah | Petugas Perpustakaan |
| Denda | `total_denda` | Jumlah denda yang harus dibayar | Rp15.000 | Dihitung dari jumlah hari keterlambatan dikalikan tarif denda harian | Petugas Perpustakaan |
| Denda | `tanggal_pembayaran` | Tanggal denda dibayarkan | 2026-10-28 | Diisi setelah pembayaran dilakukan; dapat kosong jika belum dibayar | Petugas Perpustakaan |
| Denda | `status_pembayaran` | Status penyelesaian pembayaran denda | Belum Dibayar | Menggunakan status yang ditetapkan, misalnya Belum Dibayar atau Lunas | Petugas Perpustakaan |

### 8.2 Hasil Analisis Kamus Data

Kamus data tersebut memuat elemen yang diperlukan untuk mengelola tujuh entitas kandidat Perpustakaan FaniShelf. Setiap elemen mempunyai fungsi dan aturan tersendiri agar data yang dicatat konsisten dan mudah diperiksa. Elemen identitas seperti nomor anggota, ID petugas, kode buku, kode eksemplar, dan nomor peminjaman harus memiliki nilai unik sesuai peruntukannya.

Hubungan antarentitas juga diperjelas melalui elemen yang mengacu pada data lain. Misalnya, transaksi peminjaman mengacu pada anggota dan petugas, sedangkan detail peminjaman mengacu pada eksemplar buku. Pencatatan ini membantu petugas menelusuri siapa yang meminjam buku dan eksemplar mana yang terlibat dalam transaksi.
Elemen yang berkaitan dengan data pribadi, seperti NIS dan nomor HP anggota, perlu dijaga dan hanya dapat diakses oleh petugas yang berwenang sesuai tugasnya. Sementara itu, jumlah hari keterlambatan dan total denda harus dihitung berdasarkan tanggal serta tarif yang berlaku agar pencatatan pembayaran dapat dipertanggungjawabkan.

## 9. Kebutuhan Non-Fungsional Data

Kebutuhan non-fungsional data menjelaskan ketentuan yang berkaitan dengan kapasitas pengelolaan data, penyimpanan riwayat, keamanan, dan pembatasan akses informasi. Pada Perpustakaan FaniShelf, kebutuhan ini ditetapkan agar data dapat dikelola secara teratur, riwayat transaksi tetap tersedia, dan informasi pribadi anggota terlindungi.

### 9.1 Perhitungan Parameter Personal P

Berdasarkan panduan praktikum Modul 2, nilai parameter personal dihitung menggunakan dua digit terakhir NIM dengan rumus berikut:

NIM proyek: **25430122**

Dua digit terakhir NIM adalah 22, sehingga perhitungannya sebagai berikut:

  `P = (dua digit terakhir npm mod 9) + 1`
    `= (22 mod 9) + 1`
    `= 4 + 1`
    `= 5`

Dengan demikian, nilai parameter personal untuk proyek Perpustakaan FaniShelf adalah **P = 5**.

Nilai parameter tersebut digunakan untuk menentukan ketentuan proyek sebagai berikut:

| Ketentuan                             | Rumus                       | Hasil                 |
| ------------------------------------- | --------------------------- | --------------------- |
| Maksimal eksemplar buku per transaksi | P + 2 = 5 + 2               | 7 buku                |
| Denda per hari keterlambatan          | P × Rp1.000                 | Rp5.000 per hari      |
| Perkiraan volume transaksi harian     | 40 + (5 × P) = 40 + (5 × 5) | 65 transaksi per hari |

Berdasarkan hasil perhitungan tersebut, satu transaksi peminjaman dibatasi maksimal tujuh eksemplar buku. Denda keterlambatan ditetapkan sebesar Rp5.000 untuk setiap hari keterlambatan, sedangkan perkiraan volume pengelolaan transaksi harian adalah 65 transaksi.

Ketentuan lama peminjaman selama 14 hari tetap digunakan sebagai aturan bisnis tersendiri. Nilai tersebut tidak dihitung dari parameter P.

### 9.2 Volume Data

Perpustakaan FaniShelf dirancang untuk menangani data anggota, petugas, koleksi buku, eksemplar buku, peminjaman, pengembalian, dan denda. Berdasarkan parameter personal, perkiraan awal volume kegiatan adalah 65 transaksi per hari.

| Jenis Data                       | Kebutuhan Pengelolaan                                                                       |
| -------------------------------- | ------------------------------------------------------------------------------------------- |
| Data anggota                     | Mencatat identitas dan status keanggotaan siswa                                             |
| Data petugas                     | Mencatat identitas dan status petugas yang bertugas                                         |
| Data buku dan eksemplar          | Menyimpan informasi koleksi serta kondisi dan ketersediaan setiap eksemplar                 |
| Data peminjaman dan pengembalian | Mencatat transaksi, tanggal peminjaman, batas pengembalian, dan tanggal pengembalian aktual |
| Data denda                       | Mencatat keterlambatan, jumlah denda, serta status pembayarannya                            |

Data transaksi harus dikelola secara konsisten agar pertambahan jumlah anggota, koleksi, dan transaksi tidak menyulitkan pencarian informasi maupun penyusunan laporan perpustakaan.

### 9.3 Retensi dan Penyimpanan Data

Retensi merupakan jangka waktu data disimpan sebelum dievaluasi untuk pengarsipan atau penghapusan. Sebagai usulan kebijakan untuk organisasi fiktif Perpustakaan FaniShelf, ketentuan penyimpanan data dirancang sebagai berikut.

| Jenis Data                       | Ketentuan Retensi                                                                                                       |
| -------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| Data anggota aktif               | Disimpan selama keanggotaan masih aktif                                                                                 |
| Data anggota nonaktif            | Dipertahankan untuk keperluan administrasi dan pemeriksaan riwayat sesuai kebijakan perpustakaan                        |
| Data koleksi buku dan eksemplar  | Disimpan selama koleksi tercatat sebagai bagian dari inventaris; status koleksi diperbarui apabila tidak lagi digunakan |
| Data peminjaman dan pengembalian | Diusulkan untuk disimpan minimal lima tahun agar riwayat transaksi dapat ditelusuri                                     |
| Data denda dan pembayaran        | Diusulkan untuk disimpan minimal lima tahun agar pencatatan pembayaran dapat diperiksa kembali                          |

Jangka waktu lima tahun di atas merupakan usulan kebijakan dalam rancangan proyek, bukan ketentuan khusus yang ditetapkan oleh buku praktikum. Pelaksanaannya perlu disesuaikan dengan kebijakan sekolah dan ketentuan yang berlaku. Data historis tidak dihapus sembarangan karena dapat digunakan untuk pemeriksaan dan penyusunan laporan.

### 9.4 Privasi dan Hak Akses Data

Data anggota, terutama NIS dan nomor HP, perlu dijaga karena berkaitan dengan identitas pribadi siswa. Oleh karena itu, akses terhadap data dibatasi sesuai tugas dan kebutuhan pengguna.

| Jenis Data                           | Pengguna yang Diizinkan             | Ketentuan Akses                                                             |
| ------------------------------------ | ----------------------------------- | --------------------------------------------------------------------------- |
| NIS, nama, kelas, dan status anggota | Petugas Perpustakaan                | Dapat melihat dan memperbarui data sesuai tugas pelayanan                   |
| Nomor HP anggota                     | Petugas Perpustakaan yang berwenang | Hanya digunakan apabila diperlukan untuk kepentingan pelayanan perpustakaan |
| Data petugas                         | Kepala Perpustakaan                 | Dapat mengelola data petugas sesuai kewenangannya                           |
| Data koleksi dan ketersediaan buku   | Petugas Perpustakaan                | Dapat melihat dan memperbarui data koleksi serta eksemplar                  |
| Data peminjaman dan pengembalian     | Petugas Perpustakaan                | Dapat mencatat dan memeriksa transaksi sesuai tugasnya                      |
| Data denda dan pembayaran            | Petugas Perpustakaan yang berwenang | Dapat mencatat, memperbarui, dan memeriksa status pembayaran                |
| Laporan kegiatan perpustakaan        | Kepala Perpustakaan                 | Dapat melihat laporan untuk memantau dan mengevaluasi layanan               |
| Riwayat peminjaman anggota lain      | Siswa                               | Tidak diizinkan mengakses riwayat pribadi anggota lain                      |

Pembatasan akses ini bertujuan mencegah penggunaan data yang tidak sesuai dengan kepentingan perpustakaan. Pengguna hanya diberikan akses sesuai tanggung jawabnya, sedangkan informasi pribadi anggota tidak boleh disebarkan tanpa dasar yang sesuai.

### 9.5 Hasil Analisis Kebutuhan Non-Fungsional

Berdasarkan perhitungan parameter personal, Perpustakaan FaniShelf menetapkan batas maksimal tujuh buku per transaksi, denda keterlambatan sebesar Rp5.000 per hari, dan perkiraan volume sebanyak 65 transaksi per hari. Ketentuan tersebut menjadi dasar awal dalam memperkirakan kebutuhan pengelolaan data perpustakaan.

Selain kapasitas, penyimpanan riwayat transaksi dan pengaturan hak akses juga menjadi perhatian. Riwayat peminjaman, pengembalian, serta pembayaran denda perlu dipertahankan agar informasi dapat ditelusuri kembali. Sementara itu, akses terhadap data pribadi siswa dibatasi berdasarkan tugas pengguna.
Dengan kebutuhan non-fungsional tersebut, rancangan basis data Perpustakaan FaniShelf diharapkan dapat mendukung pengelolaan data secara konsisten, menjaga riwayat transaksi, dan melindungi informasi pribadi anggota.

## 10. Isu Kualitas Data yang Diantisipasi

Kualitas data sangat penting dalam pengelolaan Perpustakaan FaniShelf karena informasi yang tidak tepat dapat mengganggu pelayanan dan penyusunan laporan. Beberapa masalah yang mungkin terjadi meliputi data anggota ganda, kesalahan pencatatan koleksi, ketidaksesuaian status peminjaman, serta kesalahan perhitungan denda. Oleh karena itu, setiap masalah perlu diantisipasi melalui aturan pencatatan dan pemeriksaan data.

### 10.1 Identifikasi Isu Kualitas Data

| No. | Isu Kualitas Data | Penyebab yang Mungkin Terjadi | Dampak | Cara Mengantisipasi |
|---|---|---|---|---|
| 1 | Data anggota ganda | Anggota didaftarkan lebih dari satu kali atau NIS salah dicatat | Data anggota menjadi tidak konsisten dan riwayat peminjaman dapat terpisah | Memastikan NIS dan nomor anggota unik serta memeriksa data sebelum pendaftaran disimpan |
| 2 | Data buku tidak lengkap atau tidak sesuai | Judul, penulis, penerbit, atau tahun terbit tidak dicatat dengan benar | Pencarian dan pengelolaan katalog buku menjadi kurang akurat | Memeriksa data berdasarkan informasi pada buku sebelum koleksi dicatat |
| 3 | Kode eksemplar ganda atau tidak sesuai | Kesalahan saat memberikan kode pada salinan fisik buku | Petugas dapat salah mengidentifikasi buku yang dipinjam atau dikembalikan | Memberikan kode eksemplar yang unik dan memastikan setiap eksemplar terhubung dengan kode buku yang benar |
| 4 | Status ketersediaan buku tidak sesuai | Status buku tidak diperbarui setelah peminjaman atau pengembalian | Buku yang sedang dipinjam dapat tercatat tersedia atau buku yang sudah kembali tetap tercatat dipinjam | Memperbarui status eksemplar setiap kali transaksi peminjaman dan pengembalian dilakukan |
| 5 | Tanggal peminjaman atau pengembalian tidak valid | Kesalahan memasukkan tanggal atau pencatatan tanggal yang tidak sesuai dengan transaksi | Batas pengembalian dan jumlah hari keterlambatan dapat salah dihitung | Memeriksa format serta urutan tanggal dan memastikan tanggal pengembalian dicatat sesuai kejadian sebenarnya |
| 6 | Perhitungan denda tidak tepat | Jumlah hari keterlambatan atau tarif denda salah dimasukkan | Jumlah denda yang tercatat tidak sesuai dengan ketentuan | Menghitung denda berdasarkan jumlah hari keterlambatan dikalikan tarif Rp5.000 per hari |
| 7 | Status pembayaran denda tidak diperbarui | Pembayaran telah diterima tetapi status masih tercatat belum dibayar | Laporan denda menjadi tidak akurat dan dapat menimbulkan kesalahan informasi kepada anggota | Memperbarui status pembayaran setelah petugas memastikan pembayaran telah diterima |
| 8 | Data transaksi tidak lengkap | Data anggota, petugas, eksemplar, atau tanggal transaksi tidak dicatat secara lengkap | Riwayat peminjaman dan pengembalian sulit ditelusuri | Memastikan elemen wajib diisi dan setiap transaksi mengacu pada data yang terdaftar |

### 10.2 Hasil Analisis Kualitas Data

Berdasarkan identifikasi tersebut, kualitas data Perpustakaan FaniShelf perlu dijaga sejak proses pencatatan hingga transaksi selesai. Setiap anggota, petugas, buku, eksemplar, transaksi peminjaman, dan denda harus memiliki identitas yang jelas agar tidak terjadi pencatatan ganda atau kesalahan hubungan antardata.

Pemeriksaan juga perlu dilakukan terhadap status ketersediaan buku, tanggal pengembalian, dan jumlah denda. Data yang tidak diperbarui dapat menyebabkan informasi yang ditampilkan berbeda dari kondisi sebenarnya. Oleh karena itu, petugas perlu memeriksa dan memperbarui data setiap kali terjadi perubahan dalam kegiatan perpustakaan.
Dengan mengantisipasi masalah kualitas data tersebut, Perpustakaan FaniShelf diharapkan dapat memiliki data yang lebih konsisten, lengkap, dan dapat ditelusuri. Hal ini mendukung pelayanan peminjaman dan pengembalian serta membantu kepala perpustakaan memperoleh laporan yang lebih dapat diandalkan.

