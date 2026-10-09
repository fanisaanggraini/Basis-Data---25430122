# DOKUMEN KEBUTUHAN DATA

## KOPERASI MAHASISWA SEJAHTERA (KOPMA)

- **Nama:** Fanisa Anggraini 
- **NIM:** 25430122
- **Kelas:** C
- **Tanggal:** 09/10/2026
- **Dosen:** Dedi Irawan, S.Kom., M.T.I.
- **Jenis Dokumen:** Studi Kasus Kopma 

## 1. LATAR BELAKANG DAN AKTIVITAS ORGANISASI

Koperasi Mahasiswa Sejahtera (Kopma) merupakan koperasi yang menjual alat tulis, makanan ringan, dan minuman di lingkungan kampus. Pembeli dapat berupa anggota koperasi maupun pembeli umum. Mahasiswa yang ingin menjadi anggota harus mendaftar dengan memberikan NIM, nama, program studi, dan nomor HP, kemudian memperoleh nomor anggota.
Dalam kegiatan operasionalnya, kasir mencatat transaksi penjualan dan mencetak nota. Petugas gudang memeriksa stok barang setiap sore. Apabila stok suatu barang berada di bawah batas minimum, petugas gudang membuat pesanan pembelian kepada pemasok. Ketika barang datang bersama faktur pemasok, petugas gudang mencatat penerimaan barang dan memperbarui stok.
Pada awal bulan, ketua koperasi membutuhkan laporan mengenai omzet, barang terlaris, barang dengan stok menipis, dan anggota yang paling aktif. Oleh karena itu, Kopma membutuhkan pengelolaan data yang teratur agar transaksi dapat dicatat dengan benar, stok dapat dipantau, dan laporan dapat disusun sesuai kebutuhan.

## 2. AKTOR DAN PROSES BISNIS

Berdasarkan studi kasus Koperasi Mahasiswa Sejahtera (Kopma), terdapat beberapa aktor yang terlibat dalam kegiatan operasional koperasi. Setiap aktor menjalankan proses bisnis sesuai dengan tugas dan tanggung jawabnya. Identifikasi proses bisnis diperlukan untuk mengetahui aktivitas yang menghasilkan atau menggunakan data dalam pengelolaan koperasi.

### 2.1 Tabel Proses Bisnis

| Kode  | Proses Bisnis                | Aktor          | Pemicu                             |
| ----- | ---------------------------- | -------------- | ---------------------------------- |
| PB-01 | Mendaftarkan anggota         | Kasir          | Mahasiswa ingin menjadi anggota    |
| PB-02 | Mencatat penjualan           | Kasir          | Pembeli melakukan pembayaran       |
| PB-03 | Memesan barang ke pemasok    | Petugas Gudang | Stok berada di bawah batas minimum |
| PB-04 | Menerima barang dari pemasok | Petugas Gudang | Barang datang bersama faktur       |
| PB-05 | Menyusun laporan bulanan     | Ketua Koperasi | Awal bulan                         |

## 3. DOKUMEN SUMBER YANG DIANALISIS

Dokumen sumber yang dianalisis dalam studi kasus Koperasi Mahasiswa Sejahtera (Kopma) adalah nota penjualan. Nota digunakan untuk mencatat informasi transaksi yang dilakukan oleh pembeli. Setiap isian pada nota dapat menjadi kandidat elemen data yang diperlukan dalam perancangan basis data.
Analisis dokumen sumber dilakukan dengan mengidentifikasi informasi yang perlu dicatat secara langsung dan informasi yang dapat diperoleh melalui perhitungan dari elemen data lainnya.

### 3.1 Tabel Elemen Data pada Nota Penjualan

| No. | Elemen Data          | Keterangan                                           | Jenis Data                  |
| --- | -------------------- | ---------------------------------------------------- | --------------------------- |
| 1   | Nomor Nota           | Identitas transaksi penjualan                        | Disimpan                    |
| 2   | Tanggal dan Waktu    | Waktu transaksi dilakukan                            | Disimpan                    |
| 3   | Kasir                | Petugas yang melayani transaksi                      | Disimpan                    |
| 4   | Anggota              | Identitas anggota yang melakukan pembelian, jika ada | Disimpan jika ada           |
| 5   | Barang               | Barang yang dibeli                                   | Disimpan                    |
| 6   | Qty                  | Jumlah barang yang dibeli                            | Disimpan                    |
| 7   | Harga Saat Transaksi | Harga barang pada saat transaksi                     | Disimpan                    |
| 8   | Subtotal             | Hasil perhitungan jumlah barang dikalikan harga      | Nilai turunan               |
| 9   | Diskon               | Potongan harga berdasarkan ketentuan yang berlaku    | Dihitung berdasarkan aturan |
| 10  | Total                | Nilai akhir yang harus dibayar pembeli               | Nilai turunan               |

### 3.2 Hasil Analisis Dokumen Sumber

Dari nota penjualan Kopma, kita bisa mengetahui informasi apa saja yang perlu dicatat saat transaksi berlangsung. Contohnya nomor nota, tanggal transaksi, kasir, barang yang dibeli, jumlah barang, dan harga saat pembelian.
Subtotal dan total termasuk nilai yang bisa dihitung dari data transaksi. Namun, harga saat transaksi tetap perlu disimpan supaya ketika harga barang berubah, harga pada nota lama tidak ikut berubah.

## 4. ENTITAS KANDIDAT DAN ELEMEN DATA

Entitas kandidat merupakan objek atau hal yang datanya perlu dicatat dan dikelola dalam basis data. Berdasarkan studi kasus Kopma dan hasil analisis dokumen sumber, entitas kandidat diidentifikasi dengan mengelompokkan elemen data yang memiliki keterkaitan. Identifikasi ini menjadi dasar untuk menentukan struktur data pada tahap perancangan berikutnya.

### 4.1 Tabel Entitas Kandidat

| Entitas Kandidat | Elemen Data Utama                                                           | Sumber Data                  |
| ---------------- | --------------------------------------------------------------------------- | ---------------------------- |
| Anggota          | Nomor anggota, NIM, nama, program studi, nomor HP, status aktif             | Formulir pendaftaran anggota |
| Barang           | Kode barang, nama barang, kategori, harga jual, stok, batas minimum stok    | Daftar barang dan faktur     |
| Penjualan        | Nomor nota, tanggal dan waktu, kasir, anggota, jumlah pembayaran            | Nota penjualan               |
| Detail Penjualan | Nomor nota, barang, jumlah barang, harga saat transaksi                     | Nota penjualan               |
| Petugas          | Kode petugas, nama, peran atau jabatan                                      | Data petugas dan wawancara   |
| Pemasok          | Kode pemasok, nama, nomor telepon, alamat                                   | Faktur pemasok               |
| Pembelian        | Nomor faktur, tanggal pembelian, pemasok, barang, jumlah barang, harga beli | Faktur pemasok               |

### 4.2 Hasil Identifikasi

Dari hasil pengelompokan data, terdapat tujuh entitas kandidat yang dibutuhkan Kopma. Setiap entitas memiliki fungsi yang berbeda sesuai dengan kegiatan koperasi.
Data anggota digunakan untuk mengenali anggota, data barang digunakan untuk mencatat persediaan, sedangkan data penjualan dan pembelian digunakan untuk mencatat transaksi. Detail penjualan juga diperlukan karena satu nota bisa berisi beberapa jenis barang. Selain itu, data petugas dan pemasok membantu mengetahui pihak yang terlibat dalam kegiatan koperasi.

## 5. ATURAN BISNIS

Aturan bisnis merupakan ketentuan yang harus dipatuhi dalam kegiatan operasional organisasi. Pada Koperasi Mahasiswa Sejahtera (Kopma), aturan bisnis digunakan untuk menjaga konsistensi pencatatan transaksi, keakuratan stok barang, dan kejelasan data anggota. Aturan ini juga menjadi acuan dalam merancang serta mengelola basis data.

### 5.1 Tabel Aturan Bisnis

| Kode  | Aturan Bisnis                                                                                                                |
| ----- | ---------------------------------------------------------------------------------------------------------------------------- |
| AB-01 | Setiap nota memiliki nomor unik dan minimal satu baris barang.                                                               |
| AB-02 | Penjualan boleh dilakukan tanpa anggota. Jika menggunakan anggota, anggota harus berstatus aktif untuk memperoleh diskon 5%. |
| AB-03 | Stok barang tidak boleh negatif. Penjualan ditolak apabila jumlah barang yang dijual melebihi stok tersedia.                 |
| AB-04 | Harga jual yang digunakan pada nota disimpan per baris transaksi dan tidak berubah meskipun harga barang kemudian naik.      |
| AB-05 | NIM anggota harus unik. Pencarian anggota dapat dilakukan melalui nomor anggota atau NIM.                                    |
| AB-06 | Pesanan pembelian dibuat apabila stok barang berada di bawah batas minimum.                                                  |

### 5.2 Hasil Identifikasi Aturan Bisnis

Aturan bisnis dibuat supaya kegiatan koperasi berjalan dengan teratur dan pencatatan datanya tetap benar. Contohnya, nomor nota harus unik, NIM anggota tidak boleh sama, dan stok barang tidak boleh sampai minus.
Harga yang digunakan pada transaksi juga harus tetap tercatat sesuai harga saat pembelian dilakukan. Sementara itu, aturan batas minimum stok membantu petugas gudang mengetahui kapan barang perlu dipesan kembali.

## 6. KEBUTUHAN INFORMASI

Kebutuhan informasi merupakan informasi yang perlu dihasilkan dari data yang dikelola oleh organisasi. Pada Koperasi Mahasiswa Sejahtera (Kopma), kebutuhan informasi ditentukan berdasarkan kebutuhan ketua koperasi dalam memantau penjualan, persediaan barang, dan aktivitas anggota. Setiap kebutuhan informasi harus didukung oleh data yang sesuai agar laporan yang dihasilkan dapat digunakan dalam pengambilan keputusan.

### 6.1 Tabel Kebutuhan Informasi

| Kode  | Kebutuhan Informasi                                       | Data yang Diperlukan                 |
| ----- | --------------------------------------------------------- | ------------------------------------ |
| KI-01 | Omzet dan jumlah nota per hari dan per bulan              | Penjualan, Detail Penjualan          |
| KI-02 | Lima barang terlaris per bulan berdasarkan jumlah terjual | Detail Penjualan, Barang             |
| KI-03 | Barang yang stoknya berada di bawah batas minimum         | Barang                               |
| KI-04 | Sepuluh anggota dengan belanja terbesar per bulan         | Penjualan, Detail Penjualan, Anggota |

### 6.2 Hasil Identifikasi Kebutuhan Informasi

Berdasarkan tabel di atas, kopma membutuhkan beberapa informasi untuk membantu kegiatan operasionalnya. Laporan omzet digunakan untuk melihat hasil penjualan, sedangkan daftar barang terlaris membantu mengetahui barang yang paling banyak dibeli.
Informasi stok di bawah batas minimum berguna untuk menentukan barang yang perlu dipesan kembali. Selain itu, data anggota dengan belanja terbesar dapat membantu ketua mengetahui anggota yang paling aktif berbelanja.

## 7. MATRIKS CRUD

Matriks CRUD digunakan untuk menunjukkan hubungan antara proses bisnis dengan entitas data yang dikelola. Huruf C (*Create*) menunjukkan proses membuat data, R (*Read*) menunjukkan membaca data, U (*Update*) menunjukkan mengubah data, dan D (*Delete*) menunjukkan menghapus data.
Matriks ini membantu memastikan bahwa setiap entitas memiliki proses bisnis yang jelas serta digunakan sesuai kebutuhan operasional koperasi.

### 7.1 Tabel Matriks CRUD

| Proses Bisnis                      | Anggota | Barang | Penjualan | Detail Penjualan | Pemasok | Pembelian |
| ---------------------------------- | ------- | ------ | --------- | ---------------- | ------- | --------- |
| PB-01 Mendaftarkan anggota         | C       |        |           |                  |         |           |
| PB-02 Mencatat penjualan           | R       | R, U   | C         | C                |         |           |
| PB-03 Memesan barang ke pemasok    |         | R      |           |                  | R       | C         |
| PB-04 Menerima barang dari pemasok |         | U      |           |                  | R       | U         |
| PB-05 Menyusun laporan bulanan     | R       | R      | R         | R                |         | R         |

### 7.2 Hasil Analisis Matriks CRUD

Berdasarkan matriks tersebut, proses pendaftaran anggota membuat data anggota baru. Proses penjualan membaca data anggota dan barang, kemudian membuat data penjualan beserta detailnya. Proses pemesanan dan penerimaan barang menggunakan data pemasok serta pembelian, sedangkan laporan bulanan membaca data yang diperlukan untuk menyajikan informasi koperasi.
Pada kolom Pemasok, belum terdapat huruf C yang menunjukkan proses pembuatan data. Hal ini menandakan perlunya proses bisnis tambahan, yaitu mengelola atau mendaftarkan data pemasok. Dengan begitu, asal data pemasok menjadi jelas dan datanya bisa diperbarui ketika diperlukan.

## 8. KAMUS DATA AWAL

Kamus data merupakan dokumentasi yang menjelaskan elemen data yang digunakan dalam suatu organisasi. Kamus data mencakup nama elemen, arti, contoh nilai, aturan yang berlaku, dan penanggung jawab data. Penyusunan kamus data bertujuan agar setiap elemen memiliki definisi yang jelas dan dapat dipahami oleh pihak yang mengelola maupun menggunakan data.

### 8.1 Tabel Kamus Data Awal

| No. | Elemen Data                     | Arti                        | Contoh       | Aturan                       | Penanggung Jawab |
| --- | ------------------------------- | --------------------------- | ------------ | ---------------------------- | ---------------- |
| 1   | `no_anggota`                    | Nomor anggota koperasi      | A-0457       | Unik, format A-4 digit       | Ketua            |
| 2   | `nim_anggota`                   | NIM anggota                 | 2301010123   | Unik, 10 digit               | Ketua            |
| 3   | `no_hp_anggota`                 | Nomor HP anggota            | 0812xxxx     | Data pribadi, akses terbatas | Ketua            |
| 4   | `no_nota_penjualan`             | Nomor nota penjualan        | PJ-2609-0142 | Unik per nota                | Kasir            |
| 5   | `harga_satuan_detail_penjualan` | Harga jual saat transaksi   | 4000         | Bilangan bulat ≥ 0           | Kasir            |
| 6   | `stok_barang`                   | Jumlah barang yang tersedia | 35           | Bilangan bulat ≥ 0           | Petugas Gudang   |

### 8.2 Hasil Analisis Kamus Data

Berdasarkan tabel di atas, Kamus data membantu menjelaskan arti setiap elemen data, contoh nilainya, aturan yang berlaku, dan siapa yang bertanggung jawab atas data tersebut. Dengan adanya penjelasan ini, setiap orang yang mengelola data bisa memahami fungsi masing-masing elemen.
Contohnya, nomor anggota dan NIM digunakan untuk mengenali anggota, sedangkan nomor nota digunakan untuk membedakan setiap transaksi. Stok barang juga perlu memiliki aturan yang jelas agar tidak tercatat negatif. Sementara itu, nomor HP anggota harus dibatasi aksesnya karena termasuk data pribadi.

## 9. KEBUTUHAN NON-FUNGSIONAL DATA

Kebutuhan non-fungsional data menjelaskan kebutuhan pengelolaan data dari segi kapasitas, lama penyimpanan, serta keamanan dan hak akses. Pada Koperasi Mahasiswa Sejahtera (Kopma), kebutuhan ini diperlukan agar data dapat dikelola secara teratur dan informasi pribadi anggota tetap terlindungi.

### 9.1 Tabel Kebutuhan Non-Fungsional

| Aspek        | Kebutuhan                                                | Keterangan                                                 |
| ------------ | -------------------------------------------------------- | ---------------------------------------------------------- |
| Volume Data  | Sekitar 150 nota transaksi per hari                      | Digunakan sebagai perkiraan jumlah transaksi harian Kopma  |
| Retensi Data | Data transaksi disimpan minimal 5 tahun                  | Mendukung pencatatan dan pemeriksaan transaksi historis    |
| Privasi Data | Nomor HP anggota merupakan data pribadi                  | Informasi perlu dilindungi dari akses yang tidak berwenang |
| Hak Akses    | Nomor HP anggota hanya boleh dilihat oleh ketua koperasi | Membatasi akses terhadap informasi pribadi anggota         |

### 9.2 Hasil Analisis Kebutuhan Non-Fungsional

Berdasarkan kebutuhan tersebut, Kebutuhan non-fungsional membantu Kopma menentukan bagaimana data harus dikelola, bukan hanya data apa yang perlu disimpan. Kopma perlu memperkirakan jumlah transaksi harian, menentukan berapa lama data transaksi disimpan, dan mengatur siapa yang boleh melihat informasi tertentu.
Contohnya, data transaksi disimpan minimal lima tahun agar riwayat penjualan masih bisa diperiksa ketika diperlukan. Nomor HP anggota juga perlu dilindungi dengan membatasi aksesnya kepada pihak yang berwenang.

## 10. ISU KUALITAS DATA YANG DIANTISIPASI

Isu kualitas data merupakan permasalahan yang dapat menyebabkan data menjadi tidak akurat, tidak lengkap, atau sulit ditelusuri. Berdasarkan studi kasus Koperasi Mahasiswa Sejahtera (Kopma), beberapa isu kualitas data perlu diantisipasi agar pencatatan transaksi, persediaan barang, dan informasi anggota tetap konsisten.

### 10.1 Tabel Isu Kualitas Data

| No. | Isu Kualitas Data                                         | Dampak                                                            | Upaya Pencegahan                                                          |
| --- | --------------------------------------------------------- | ----------------------------------------------------------------- | ------------------------------------------------------------------------- |
| 1   | Stok barang tercatat negatif                              | Informasi persediaan menjadi tidak akurat                         | Memastikan penjualan tidak melebihi stok yang tersedia                    |
| 2   | NIM anggota mengalami duplikasi                           | Identitas anggota sulit dibedakan                                 | Menerapkan aturan keunikan pada NIM                                       |
| 3   | Harga saat transaksi tidak tersimpan                      | Nilai transaksi lama dapat berubah ketika harga barang diperbarui | Menyimpan harga yang digunakan pada setiap baris transaksi                |
| 4   | Data pemasok tidak memiliki proses pengelolaan yang jelas | Data pemasok sulit ditelusuri dan diperbarui                      | Menambahkan proses pendaftaran dan pemeliharaan data pemasok              |
| 5   | Data pribadi anggota diakses tanpa pembatasan             | Privasi anggota berisiko terganggu                                | Membatasi akses nomor HP anggota kepada pihak berwenang                   |
| 6   | Informasi stok tidak diperbarui setelah transaksi         | Laporan stok tidak sesuai dengan kondisi persediaan               | Memastikan perubahan stok dicatat setelah penjualan dan penerimaan barang |

### 10.2 Kesimpulan Analisis Kualitas Data

Dari hasil identifikasi, ada beberapa masalah yang perlu diperhatikan dalam pengelolaan data Kopma, seperti stok yang tercatat negatif, NIM yang mungkin sama, dan harga transaksi lama yang tidak tersimpan dengan benar.
Masalah tersebut bisa dikurangi dengan menerapkan aturan yang jelas, memperbarui stok setiap kali ada transaksi, dan menyimpan harga sesuai kondisi saat transaksi berlangsung. Selain itu, data anggota dan pemasok perlu dikelola dengan baik, sedangkan informasi pribadi anggota harus dilindungi.

## 11. LATIHAN DAN MODIFIKASI

### 11.1 Modifikasi Program Poin Loyalitas

Kopma ingin menambahkan program poin loyalitas untuk memberikan keuntungan kepada anggota yang berbelanja. Berdasarkan ketentuan latihan, setiap kelipatan belanja sebesar Rp10.000 menghasilkan satu poin. Anggota yang telah mengumpulkan 50 poin dapat menukarkannya dengan potongan harga sebesar Rp5.000.

Untuk menerapkan program tersebut, diperlukan beberapa elemen data tambahan yang digunakan untuk mencatat jumlah poin anggota, poin yang diperoleh dari transaksi, poin yang ditukarkan, dan nilai potongan harga.

#### A. Elemen Data Tambahan

| No. | Elemen Data                       | Arti                                       | Contoh | Penanggung Jawab |
| --- | --------------------------------- | ------------------------------------------ | ------ | ---------------- |
| 1   | `poin_loyalitas_anggota`          | Jumlah poin yang dimiliki anggota          | 25     | Ketua            |
| 2   | `poin_diperoleh_detail_penjualan` | Jumlah poin yang diperoleh dari transaksi  | 3      | Kasir            |
| 3   | `poin_ditukar_detail_penjualan`   | Jumlah poin yang digunakan untuk penukaran | 50     | Kasir            |
| 4   | `nilai_potongan_detail_penjualan` | Nilai potongan harga dari penukaran poin   | 5000   | Kasir            |

#### B. Aturan Bisnis Tambahan

Untuk menjalankan program poin loyalitas, Kopma perlu menetapkan aturan yang jelas mengenai perolehan dan penukaran poin. Aturan ini digunakan agar poin anggota dapat dihitung dan dikelola dengan benar.

| Kode  | Aturan Bisnis                                                                                    |
| ----- | ------------------------------------------------------------------------------------------------ |
| AB-07 | Setiap kelipatan belanja sebesar Rp10.000 oleh anggota menghasilkan satu poin loyalitas.         |
| AB-08 | Anggota dapat menukarkan 50 poin loyalitas dengan potongan harga sebesar Rp5.000.                |
| AB-09 | Penukaran poin hanya dapat dilakukan apabila saldo poin anggota mencukupi.                       |
| AB-10 | Poin yang telah ditukarkan harus dikurangi dari saldo poin anggota agar tidak digunakan kembali. |

#### C. Kebutuhan Informasi Tambahan

Setelah program poin loyalitas diterapkan, Kopma membutuhkan informasi mengenai jumlah poin yang dimiliki anggota serta riwayat perolehan dan penukaran poin. Informasi tersebut membantu kasir memeriksa saldo poin anggota ketika melakukan transaksi dan membantu ketua memantau penggunaan program loyalitas.

| Kode  | Kebutuhan Informasi                                           | Data yang Diperlukan                 |
| ----- | ------------------------------------------------------------- | ------------------------------------ |
| KI-05 | Mengetahui jumlah poin loyalitas yang dimiliki setiap anggota | Anggota, Detail Penjualan            |
| KI-06 | Mengetahui riwayat perolehan dan penukaran poin loyalitas     | Anggota, Penjualan, Detail Penjualan |

#### D. Perubahan Matriks CRUD

Penambahan program poin loyalitas memengaruhi proses pencatatan penjualan. Proses tersebut perlu membaca data anggota untuk memeriksa saldo poin, memperbarui saldo ketika poin diperoleh atau ditukarkan, serta membuat detail transaksi yang mencatat informasi poin.

| Proses Bisnis                                  | Anggota | Barang | Penjualan | Detail Penjualan | Pemasok | Pembelian |
| ---------------------------------------------- | ------- | ------ | --------- | ---------------- | ------- | --------- |
| PB-01 Mendaftarkan anggota                     | C       |        |           |                  |         |           |
| PB-02 Mencatat penjualan dengan poin loyalitas | R, U    | R, U   | C         | C                |         |           |
| PB-03 Memesan barang ke pemasok                |         | R      |           |                  | R       | C         |
| PB-04 Menerima barang dari pemasok             |         | U      |           |                  | R       | U         |
| PB-05 Menyusun laporan bulanan                 | R       | R      | R         | R                |         | R         |

Keterangan:

* C (*Create*): membuat data.
* R (*Read*): membaca data.
* U (*Update*): memperbarui data.
* D (*Delete*): menghapus data.

Perubahan utama terdapat pada proses PB-02. Data anggota dibaca untuk memeriksa saldo poin dan diperbarui setelah poin diperoleh atau ditukarkan. Detail penjualan juga dibuat untuk mencatat informasi transaksi yang berkaitan dengan program loyalitas.

#### E. Hasil Modifikasi

Penambahan program poin loyalitas membuat pengelolaan data Kopma menjadi lebih lengkap. Selain mencatat transaksi penjualan, Kopma juga perlu mencatat poin yang diperoleh dan digunakan oleh anggota. Aturan mengenai perolehan dan penukaran poin membantu memastikan bahwa saldo poin tetap sesuai dengan aktivitas transaksi.
Perubahan ini memerlukan penambahan elemen data, aturan bisnis, kebutuhan informasi, dan penyesuaian matriks CRUD. Dengan demikian, program loyalitas dapat dikelola secara teratur dan informasi mengenai saldo serta riwayat poin anggota dapat diketahui ketika diperlukan. 

## 12. PERBAIKAN PERNYATAAN KEBUTUHAN YANG KABUR

Pernyataan kebutuhan yang terlalu umum dapat menimbulkan perbedaan pemahaman ketika sistem dirancang. Oleh karena itu, setiap kebutuhan perlu dijelaskan dengan kondisi yang lebih spesifik dan dapat diuji. Berikut adalah perbaikan tiga pernyataan kebutuhan pada studi kasus Kopma.

### 12.1 Tabel Perbaikan Pernyataan Kebutuhan

| No. | Pernyataan Kebutuhan Awal          | Pernyataan Kebutuhan yang Diperbaiki                                                                                                           | Cara Pengujian                                                                                                                           |
| --- | ---------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| 1   | Data anggota harus aman.           | Nomor HP anggota hanya dapat dilihat oleh ketua koperasi yang memiliki hak akses sesuai ketentuan.                                             | Masuk menggunakan akun ketua dan akun kasir, lalu periksa apakah akses nomor HP sudah sesuai dengan hak masing-masing akun.              |
| 2   | Sistem harus cepat mencari barang. | Pencarian barang berdasarkan kode atau nama harus menampilkan hasil dalam waktu maksimal 2 detik pada kondisi pengujian yang telah ditentukan. | Catat waktu pencarian beberapa barang berdasarkan kode dan nama, lalu periksa apakah hasil muncul dalam batas waktu yang ditetapkan.     |
| 3   | Laporan stok harus akurat.         | Jumlah stok pada laporan harus sesuai dengan stok awal ditambah barang yang diterima dari pemasok dan dikurangi barang yang berhasil terjual.  | Bandingkan jumlah stok pada laporan dengan hasil perhitungan stok berdasarkan transaksi penerimaan dan penjualan yang berhasil diproses. |

### 12.2 Hasil Perbaikan

Setelah diperbaiki, ketiga pernyataan tersebut menjadi lebih jelas karena memiliki ketentuan yang dapat diperiksa. Keamanan data dapat diuji melalui hak akses pengguna, kecepatan pencarian dapat diuji menggunakan batas waktu, dan akurasi stok dapat diuji dengan membandingkan jumlah pada laporan dengan catatan transaksi.
Dengan demikian, kebutuhan sistem tidak hanya menjelaskan harapan pengguna, tetapi juga memberikan dasar untuk memeriksa apakah kebutuhan tersebut sudah terpenuhi.
