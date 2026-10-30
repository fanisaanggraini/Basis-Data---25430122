# Normalisasi dan Skema Relasional — Perpustakaan FaniShelf
- **Nama:** Fanisa Anggraini 
- **NIM:** 25430122
- **Kelas:** C
- **Tanggal:** 19/10/2026
- **Dosen:** Dedi Irawan, S.Kom., M.T.I.

## 1. Bentuk UNF (Unnormalized Form)

### 1.1 Dokumen Sumber

Dokumen sumber yang digunakan dalam proses normalisasi adalah Slip Peminjaman Buku. Dokumen ini digunakan untuk mencatat transaksi peminjaman buku, identitas anggota, serta eksemplar buku yang dipinjam.

### 1.2 Relasi UNF

Bentuk UNF dari Slip Peminjaman Buku adalah:

PEMINJAMAN_UNF (
    no_peminjaman,
    no_anggota,
    nama_siswa,
    tanggal_peminjaman,
    batas_pengembalian,
    status_peminjaman,
    {
        kode_eksemplar,
        judul_buku
    }
)

Keterangan:
- Satu nomor peminjaman dapat memiliki beberapa eksemplar buku.
- Data kode eksemplar dan judul buku masih berbentuk grup berulang.
- Karena masih terdapat grup berulang, relasi tersebut belum memenuhi 1NF.

## 2. Tahapan Normalisasi

### 2.1 Bentuk UNF (Unnormalized Form)

Berdasarkan dokumen Slip Peminjaman Buku, bentuk awal data masih memiliki grup berulang karena satu transaksi peminjaman dapat mencakup beberapa eksemplar buku.

PEMINJAMAN_UNF (
    no_peminjaman,
    no_anggota,
    nama_siswa,
    tanggal_peminjaman,
    batas_pengembalian,
    status_peminjaman,
    {
        kode_eksemplar,
        judul_buku
    }
)

### 2.2 Bentuk 1NF (First Normal Form)

Pada tahap 1NF, grup data yang berulang dihilangkan dengan membuat satu baris untuk setiap eksemplar buku dalam satu transaksi peminjaman.

PEMINJAMAN_1NF (
    no_peminjaman,
    kode_eksemplar,
    no_anggota,
    nama_siswa,
    judul_buku,
    tanggal_peminjaman,
    batas_pengembalian,
    status_peminjaman
)

Kunci Primer (PK):
(no_peminjaman, kode_eksemplar)

Keterangan:
- Setiap baris hanya mencatat satu eksemplar buku.
- Tidak ada grup data yang berulang.
- Setiap kolom berisi satu nilai atau bersifat atomik.
- Kunci primer menggunakan gabungan no_peminjaman dan kode_eksemplar. 

### 2.3 Dependensi Fungsional (Functional Dependency)

Dependensi fungsional digunakan untuk mengetahui hubungan antara atribut yang satu dengan atribut lainnya. Penentuan dependensi didasarkan pada aturan bisnis dan struktur data Perpustakaan FaniShelf.

FD1:
no_peminjaman → no_anggota, tanggal_peminjaman,
batas_pengembalian, status_peminjaman
(AB-04 dan AB-07)

FD2:
no_anggota → nama_siswa
(Berdasarkan identitas unik anggota pada AB-01)

FD3:
kode_eksemplar → judul_buku
(Berdasarkan AB-11 dan hubungan EKSEMPLAR_BUKU dengan BUKU pada ERD Modul 3)

Keterangan:

- Satu nomor peminjaman menentukan informasi utama transaksi peminjaman.
- Satu nomor anggota menentukan identitas nama siswa.
- Satu kode eksemplar menunjukkan satu salinan fisik buku beserta judul bukunya.
- Data judul buku pada Slip Peminjaman digunakan sebagai informasi yang ditampilkan kepada anggota.

Dari dependensi tersebut terdapat satu ketergantungan transitif:

1. no_peminjaman → no_anggota → nama_siswa

### 2.4 Bentuk 2NF (Second Normal Form)

Pada tahap 2NF, dilakukan pemisahan atribut yang memiliki ketergantungan pada sebagian kunci primer gabungan.

Kunci primer pada relasi PEMINJAMAN_1NF adalah:
(no_peminjaman, kode_eksemplar)

Hasil pemisahan relasi:

**1. PEMINJAMAN_2NF**

(
    no_peminjaman,
    no_anggota,
    nama_siswa,
    tanggal_peminjaman,
    batas_pengembalian,
    status_peminjaman
)

PK: no_peminjaman

**2. EKSEMPLAR_2NF**

(
    kode_eksemplar,
    judul_buku
)

PK: kode_eksemplar

**3. DETAIL_PEMINJAMAN_2NF**

(
    no_peminjaman,
    kode_eksemplar
)

PK: (no_peminjaman, kode_eksemplar)

Keterangan:

- Informasi transaksi dipisahkan ke dalam PEMINJAMAN_2NF karena bergantung pada no_peminjaman.
- Informasi judul buku dipisahkan ke EKSEMPLAR_2NF karena bergantung pada kode_eksemplar.
- DETAIL_PEMINJAMAN_2NF digunakan untuk menghubungkan transaksi dengan eksemplar buku.
- Tidak ada atribut nonkunci yang hanya bergantung pada sebagian kunci primer gabungan.
- Atribut nama_siswa masih berada pada PEMINJAMAN_2NF karena ketergantungannya terhadap no_anggota akan dihilangkan pada tahap 3NF.

### 2.5 Bentuk 3NF (Third Normal Form)

Pada tahap 3NF, atribut nonkunci yang memiliki ketergantungan transitif dipisahkan ke dalam relasi tersendiri.

Berdasarkan dependensi fungsional, terdapat ketergantungan transitif:

no_peminjaman → no_anggota → nama_siswa

Oleh karena itu, data anggota dipisahkan dari data transaksi peminjaman.

Hasil pemisahan relasi:

**1. ANGGOTA_3NF**

(
    no_anggota,
    nama_siswa
)

PK: no_anggota

**2. PEMINJAMAN_3NF**

(
    no_peminjaman,
    no_anggota,
    tanggal_peminjaman,
    batas_pengembalian,
    status_peminjaman
)

PK: no_peminjaman
FK: no_anggota

**3. EKSEMPLAR_3NF**

(
    kode_eksemplar,
    judul_buku
)

PK: kode_eksemplar

**4. DETAIL_PEMINJAMAN_3NF**

(
    no_peminjaman,
    kode_eksemplar
)

PK: (no_peminjaman, kode_eksemplar)

Keterangan:
- Data nama siswa dipisahkan ke tabel ANGGOTA_3NF.
- Tabel PEMINJAMAN_3NF menyimpan informasi utama transaksi.
- Tabel EKSEMPLAR_3NF menyimpan informasi eksemplar dan judul buku berdasarkan dokumen sumber.
- Tabel DETAIL_PEMINJAMAN_3NF menghubungkan transaksi dengan eksemplar buku.
- Pemisahan dilakukan untuk menghilangkan ketergantungan transitif. 
- Atribut nama_siswa dipisahkan karena ditentukan oleh no_anggota, bukan secara langsung oleh no_peminjaman.
- Hasil normalisasi ini merupakan hasil pengolahan dokumen Slip Peminjaman Buku, sehingga belum menggambarkan seluruh tujuh tabel pada skema relasional akhir FaniShelf.

### 2.6 Pemeriksaan BCNF (Boyce-Codd Normal Form)

Pemeriksaan BCNF dilakukan untuk memastikan bahwa setiap determinan dalam suatu relasi merupakan kunci kandidat.

| No. | Relasi | Determinan | Kunci Kandidat | Hasil |
|---|---|---|---|---|
| 1 | ANGGOTA_3NF | no_anggota | no_anggota | Memenuhi BCNF |
| 2 | PEMINJAMAN_3NF | no_peminjaman | no_peminjaman | Memenuhi BCNF |
| 3 | EKSEMPLAR_3NF | kode_eksemplar | kode_eksemplar | Memenuhi BCNF |
| 4 | DETAIL_PEMINJAMAN_3NF | (no_peminjaman, kode_eksemplar) | (no_peminjaman, kode_eksemplar) | Memenuhi BCNF |

**Kesimpulan:**

Berdasarkan dependensi fungsional yang telah diidentifikasi, setiap determinan pada relasi hasil normalisasi merupakan kunci kandidat. Dengan demikian, keempat relasi tersebut memenuhi BCNF berdasarkan dependensi fungsional yang digunakan.

### 2.7 Keputusan Penyimpanan Nilai Turunan

Nilai turunan merupakan nilai yang diperoleh melalui perhitungan berdasarkan atribut lainnya. Pada Perpustakaan FaniShelf, keputusan penyimpanan nilai ditentukan sebagai berikut.

| No. | Atribut | Cara Memperoleh | Keputusan | Alasan |
|---|---|---|---|---|
| 1 | batas_pengembalian | tanggal_peminjaman + 14 hari | Disimpan | Menjadi batas resmi pengembalian yang tercatat pada transaksi peminjaman. |
| 2 | jumlah_hari_terlambat | tanggal_pengembalian - batas_pengembalian | Disimpan | Menjadi catatan jumlah keterlambatan ketika buku dikembalikan. |
| 3 | tarif_denda_harian | Berdasarkan aturan AB-09 sebesar Rp5.000 | Disimpan | Menjadi acuan tarif yang digunakan pada saat denda dikenakan. |
| 4 | total_denda | jumlah_hari_terlambat × tarif_denda_harian | Disimpan | Menjadi catatan jumlah denda yang harus dibayar anggota. |

**Kesimpulan:**

Batas pengembalian, jumlah hari keterlambatan, dan total denda diperoleh melalui perhitungan. Hasil perhitungan tersebut disimpan sebagai catatan transaksi agar riwayat peminjaman dan denda dapat ditelusuri kembali. Tarif denda harian juga disimpan sebagai acuan perhitungan sesuai aturan bisnis AB-09.

## 3. Skema Relasional Akhir

Berdasarkan hasil normalisasi dan rancangan data Perpustakaan FaniShelf, diperoleh skema relasional akhir yang terdiri dari tujuh tabel.

**1. ANGGOTA**

(
    no_anggota (PK),
    nis (UNIQUE),
    nama_siswa,
    kelas,
    no_hp,
    tanggal_pendaftaran,
    status_anggota
)

**2. PETUGAS**

(
    id_petugas (PK),
    nama_petugas,
    jabatan_petugas,
    status_petugas
)

**3. BUKU**

(
    kode_buku (PK),
    isbn,
    judul_buku,
    penulis,
    penerbit,
    tahun_terbit,
    kategori_buku
)

**4. EKSEMPLAR_BUKU**

(
    kode_eksemplar (PK),
    kode_buku (FK),
    lokasi_rak,
    kondisi_buku,
    status_ketersediaan
)

**5. PEMINJAMAN**

(
    no_peminjaman (PK),
    no_anggota (FK),
    id_petugas (FK),
    tanggal_peminjaman,
    batas_pengembalian,
    status_peminjaman
)

**6. DETAIL_PEMINJAMAN**

(
    id_detail_peminjaman (PK),
    no_peminjaman (FK),
    kode_eksemplar (FK),
    tanggal_pengembalian,
    kondisi_saat_dikembalikan
)

**7. DENDA**

(
    no_denda (PK),
    id_detail_peminjaman (FK, UNIQUE),
    jumlah_hari_terlambat,
    tarif_denda_harian,
    total_denda,
    tanggal_pembayaran,
    status_pembayaran
)

Keterangan:
- PK (Primary Key) merupakan kunci utama setiap tabel.
- FK (Foreign Key) merupakan kunci tamu yang menghubungkan antartabel.
- UNIQUE digunakan untuk memastikan nilai tertentu tidak boleh sama. 

## 4. Pemeriksaan dan Penyesuaian ERD

Berdasarkan hasil normalisasi, struktur basis data Perpustakaan FaniShelf tetap menggunakan tujuh entitas, yaitu Anggota, Petugas, Buku, Eksemplar Buku, Peminjaman, Detail Peminjaman, dan Denda.

Beberapa hal yang diperhatikan dalam pemeriksaan ERD adalah:

1. Atribut nama_siswa disimpan pada entitas Anggota dan tidak diulang pada entitas Peminjaman.
2. Atribut judul_buku disimpan pada entitas Buku, sedangkan Eksemplar Buku menggunakan kode_buku sebagai penghubung.
3. Entitas Detail Peminjaman menghubungkan transaksi Peminjaman dengan Eksemplar Buku.
4. Entitas Denda terhubung dengan Detail Peminjaman melalui id_detail_peminjaman.

Hasil pemeriksaan:
Struktur ERD dipertahankan apabila sudah sesuai dengan hasil normalisasi dan skema relasional akhir. Tidak diperlukan penambahan entitas baru. 

## 5. Ringkasan Tahapan Normalisasi

Proses normalisasi Slip Peminjaman Buku Perpustakaan FaniShelf dilakukan melalui tahapan UNF, 1NF, 2NF, dan 3NF.

| Tahap | Hasil Relasi | Perubahan |
|---|---|---|
| UNF | PEMINJAMAN_UNF | Masih terdapat grup berulang berupa kode eksemplar dan judul buku dalam satu transaksi. |
| 1NF | PEMINJAMAN_1NF | Grup berulang dihilangkan sehingga setiap baris mencatat satu eksemplar buku. |
| 2NF | PEMINJAMAN_2NF, EKSEMPLAR_2NF, DETAIL_PEMINJAMAN_2NF | Atribut yang bergantung pada sebagian kunci primer gabungan dipisahkan. |
| 3NF | ANGGOTA_3NF, PEMINJAMAN_3NF, EKSEMPLAR_3NF, DETAIL_PEMINJAMAN_3NF | Ketergantungan transitif nama siswa melalui nomor anggota dihilangkan dengan memisahkan data anggota. |

### Kesimpulan

Berdasarkan proses normalisasi, relasi Slip Peminjaman Buku telah melalui tahapan dari UNF hingga 3NF. Pemisahan dilakukan untuk menghilangkan grup berulang, ketergantungan parsial, dan ketergantungan transitif.

Hasil normalisasi dokumen sumber ini selanjutnya digunakan sebagai dasar pemeriksaan dan penyusunan skema relasional akhir Perpustakaan FaniShelf yang terdiri dari tujuh tabel. 

