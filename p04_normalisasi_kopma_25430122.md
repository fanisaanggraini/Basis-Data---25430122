# Latihan Modul 4 - Normalisasi Kopma 
- **Nama:** Fanisa Anggraini 
- **NIM:** 25430122
- **Kelas:** C
- **Tanggal:** 19/10/2026
- **Dosen:** Dedi Irawan, S.Kom., M.T.I.

## D1. Dari UNF ke 1NF 

### 1. Bentuk UNF

NOTA_UNF (
    no_nota_penjualan,
    tgl_penjualan,
    kode_petugas,
    nama_petugas,
    no_anggota,
    nama_anggota,
    {
        kode_barang,
        nama_barang,
        qty_detail_penjualan,
        harga_satuan_detail_penjualan,
        subtotal_detail_penjualan
    },
    jumlah_penjualan,
    diskon_penjualan,
    total_penjualan
)

### 2. Bentuk 1NF

NOTA_1NF (
    no_nota_penjualan,
    kode_barang,
    tgl_penjualan,
    kode_petugas,
    nama_petugas,
    no_anggota,
    nama_anggota,
    nama_barang,
    qty_detail_penjualan,
    harga_satuan_detail_penjualan,
    subtotal_detail_penjualan,
    jumlah_penjualan,
    diskon_penjualan,
    total_penjualan
)

**Kunci primer komposit:** (no_nota_penjualan, kode_barang)

## D.2 Menuliskan Dependensi Fungsional

Dependensi fungsional adalah hubungan ketika suatu atribut atau gabungan atribut menentukan nilai atribut lainnya. Penulisannya menggunakan tanda panah `->`.

### 3. Daftar Dependensi Fungsional

**FD1**

`no_nota_penjualan -> tgl_penjualan, kode_petugas, no_anggota`

(AB-01)

FD1 menunjukkan bahwa nomor nota penjualan menentukan tanggal penjualan, petugas yang melayani, dan anggota yang terkait dengan transaksi tersebut.

**FD2**

`kode_petugas -> nama_petugas`

FD2 menunjukkan bahwa kode petugas menentukan nama petugas yang tercatat dalam data petugas.

**FD3**

`no_anggota -> nama_anggota`

(AB-05)

FD3 menunjukkan bahwa nomor anggota menentukan nama anggota yang tercatat dalam data keanggotaan.

**FD4**

`kode_barang -> nama_barang`

FD4 menunjukkan bahwa kode barang menentukan nama barang yang tercatat dalam data barang.

**FD5**

`(no_nota_penjualan, kode_barang) -> qty_detail_penjualan, harga_satuan_detail_penjualan`

(AB-04)

FD5 menunjukkan bahwa gabungan nomor nota penjualan dan kode barang menentukan jumlah barang yang dibeli serta harga satuan yang berlaku pada detail transaksi. Harga satuan ditempatkan pada gabungan kunci tersebut karena harga pada nota harus tetap tercatat sesuai harga saat transaksi berlangsung, meskipun harga barang berubah kemudian.

**FD6**

`(qty_detail_penjualan, harga_satuan_detail_penjualan) -> subtotal_detail_penjualan`

(Turunan)

FD6 menunjukkan bahwa subtotal detail penjualan dapat dihitung dari jumlah barang dikalikan harga satuan.

### Penjelasan

Dependensi fungsional di atas digunakan sebagai dasar untuk melakukan normalisasi dari 1NF menuju 2NF dan 3NF. Dependensi ditentukan berdasarkan aturan bisnis dan makna setiap atribut, bukan hanya berdasarkan contoh nilai pada spreadsheet.

FD1 berkaitan dengan keunikan nomor nota. FD3 berkaitan dengan identitas anggota, sedangkan FD5 mengikuti aturan bahwa harga yang digunakan pada transaksi harus tetap tersimpan sesuai kondisi saat penjualan dilakukan. FD6 merupakan dependensi turunan karena subtotal diperoleh melalui perhitungan jumlah barang dan harga satuan.

### Ringkasan Dependensi Fungsional

| Kode | Penentu | Atribut yang Ditentukan | Dasar |
|---|---|---|---|
| FD1 | `no_nota_penjualan` | `tgl_penjualan`, `kode_petugas`, `no_anggota` | AB-01 |
| FD2 | `kode_petugas` | `nama_petugas` | Identitas petugas |
| FD3 | `no_anggota` | `nama_anggota` | AB-05 |
| FD4 | `kode_barang` | `nama_barang` | Identitas barang |
| FD5 | `(no_nota_penjualan, kode_barang)` | `qty_detail_penjualan`, `harga_satuan_detail_penjualan` | AB-04 |
| FD6 | `qty_detail_penjualan`, `harga_satuan_detail_penjualan` | `subtotal_detail_penjualan` | Nilai turunan |

Ringkasan ini memperlihatkan atribut penentu, atribut yang ditentukan, serta dasar setiap dependensi fungsional. Dependensi tersebut menjadi acuan untuk proses normalisasi pada tahap 2NF dan 3NF.

## D.3 Menuju 2NF dan 3NF

### 4. Bentuk 2NF

Pada tahap 2NF, atribut yang hanya bergantung pada sebagian kunci primer komposit dipisahkan ke dalam relasi tersendiri. Berdasarkan dependensi fungsional pada tahap sebelumnya, data dipisahkan menjadi relasi penjualan, barang, dan detail penjualan.

**Relasi PENJUALAN_2NF**

PENJUALAN_2NF (
    no_nota_penjualan,
    tgl_penjualan,
    kode_petugas,
    nama_petugas,
    no_anggota,
    nama_anggota,
    jumlah_penjualan,
    diskon_penjualan,
    total_penjualan
)

Kunci primer: `no_nota_penjualan`.

**Relasi BARANG_2NF**

BARANG_2NF (
    kode_barang,
    nama_barang
)

Kunci primer: `kode_barang`.

**Relasi DETAIL_PENJUALAN_2NF**

DETAIL_PENJUALAN_2NF (
    no_nota_penjualan,
    kode_barang,
    qty_detail_penjualan,
    harga_satuan_detail_penjualan,
    subtotal_detail_penjualan
)

Kunci primer: gabungan `no_nota_penjualan` dan `kode_barang`.

### 5. Bentuk 3NF

Pada tahap 3NF, ketergantungan transitif dihilangkan dengan memisahkan informasi petugas dan anggota dari relasi penjualan.
Ketergantungan yang diperhatikan adalah:

- `no_nota_penjualan -> kode_petugas -> nama_petugas`
- `no_nota_penjualan -> no_anggota -> nama_anggota`

Hal ini menunjukkan bahwa nama petugas ditentukan oleh `kode_petugas`, sedangkan nama anggota ditentukan oleh `no_anggota`. Oleh karena itu, kedua informasi tersebut dipisahkan ke dalam relasi tersendiri.

**Relasi PENJUALAN_3NF**

PENJUALAN_3NF (
    no_nota_penjualan,
    tgl_penjualan,
    kode_petugas,
    no_anggota,
    jumlah_penjualan,
    diskon_penjualan,
    total_penjualan
)

Kunci primer: `no_nota_penjualan`.

**Relasi PETUGAS_3NF**

PETUGAS_3NF (
    kode_petugas,
    nama_petugas
)

Kunci primer: `kode_petugas`.

**Relasi ANGGOTA_3NF**

ANGGOTA_3NF (
    no_anggota,
    nama_anggota
)

Kunci primer: `no_anggota`.

Relasi `BARANG_2NF` dan `DETAIL_PENJUALAN_2NF` dari tahap sebelumnya tetap menjadi bagian dari hasil pemisahan. Dengan demikian, proses normalisasi tetap mempertahankan informasi barang dan rincian transaksi.

Nama relasi berakhiran `_3NF` dan `_2NF` merupakan penanda tahap pengerjaan, bukan nama tabel final yang diwajibkan buku. Pada tahap berikutnya, nilai turunan akan ditinjau kembali untuk menghasilkan skema operasional akhir. 

### 6. Keputusan Nilai Turunan

Nilai turunan adalah nilai yang dapat dihitung berdasarkan data lainnya. Pada contoh Kopma, `subtotal_detail_penjualan`, `jumlah_penjualan`, dan `total_penjualan` dapat dihitung dari detail transaksi dan status anggota.

Dalam skema operasional yang dicontohkan buku, ketiga nilai tersebut tidak disimpan sebagai kolom tersendiri karena dapat dihitung ketika diperlukan. Keputusan ini bertujuan mengurangi risiko ketidakkonsistenan nilai apabila data transaksi berubah.
Sementara itu, `bayar_penjualan` tetap dicatat pada relasi penjualan karena merupakan informasi pembayaran yang diperlukan dalam transaksi.

### Skema Relasional Akhir

**1. PENJUALAN**

PENJUALAN (
    no_nota_penjualan,
    tgl_penjualan,
    kode_petugas*,
    no_anggota*,
    bayar_penjualan
)

- Kunci primer: `no_nota_penjualan`
- Kunci tamu: `kode_petugas`, `no_anggota`

**2. DETAIL_PENJUALAN**

DETAIL_PENJUALAN (
    no_nota_penjualan*,
    kode_barang*,
    qty_detail_penjualan,
    harga_satuan_detail_penjualan
)

- Kunci primer gabungan: `no_nota_penjualan` dan `kode_barang`
- Kunci tamu: `no_nota_penjualan`, `kode_barang`

**3. BARANG**

BARANG (
    kode_barang,
    nama_barang,
    kategori_barang,
    harga_jual_barang,
    stok_barang,
    stok_min_barang
)

- Kunci primer: `kode_barang`

**4. PETUGAS**

PETUGAS (
    kode_petugas,
    nama_petugas,
    peran_petugas
)

- Kunci primer: `kode_petugas`

**5. ANGGOTA**

ANGGOTA (
    no_anggota,
    nim_anggota,
    nama_anggota,
    prodi_anggota,
    no_hp_anggota,
    status_anggota,
    tgl_daftar_anggota
)

- Kunci primer: `no_anggota`
**Keterangan:** Tanda `*` menunjukkan kunci tamu (*foreign key*).

## D.4 Mencocokkan dengan Skema Kanonik

### 7. Perbandingan dengan Skema Kanonik Kopma

Skema relasional hasil normalisasi pada tahap sebelumnya dibandingkan dengan skema kanonik Kopma yang tercantum pada Tabel 4.2 buku praktikum.

Perbedaan utamanya terletak pada penggunaan kunci pengganti (surrogate key). Pada skema kanonik, atribut seperti `id_petugas`, `id_anggota`, dan `id_barang` digunakan sebagai kunci primer. Sementara itu, kode atau nomor alami tetap dipertahankan sebagai kunci unik untuk menjaga agar setiap data tidak tercatat ganda.

| Tabel | Kunci Primer (PK) | Kunci Unik | Kunci Tamu (FK) |
|---|---|---|---|
| petugas | `id_petugas` | `kode_petugas` | - |
| anggota | `id_anggota` | `no_anggota`, `nim_anggota` | - |
| barang | `id_barang` | `kode_barang` | - |
| pemasok | `id_pemasok` | - | - |
| penjualan | `id_penjualan` | `no_nota_penjualan` | `id_petugas`, `id_anggota` (boleh NULL) |
| detail_penjualan | (`id_penjualan`, `id_barang`) | - | `id_penjualan`, `id_barang` |
| pembelian | `id_pembelian` | - | `id_pemasok` |
| detail_pembelian | (`id_pembelian`, `id_barang`) | - | `id_pembelian`, `id_barang` |

Skema kanonik mencakup delapan tabel, termasuk pemasok, pembelian, dan detail pembelian. Tabel-tabel tersebut melengkapi kebutuhan pengelolaan penjualan dan pembelian barang pada Kopma.

### 8. Pemeriksaan BCNF

BCNF (*Boyce-Codd Normal Form*) merupakan bentuk normal yang mensyaratkan setiap penentu dalam dependensi fungsional nontrivial merupakan *superkey* pada relasi terkait.

Pemeriksaan dilakukan berdasarkan dependensi fungsional yang dapat diidentifikasi dari skema kanonik Kopma pada Tabel 4.2.

| Tabel | Penentu yang diperiksa | Hasil Pemeriksaan |
|---|---|---|
| `petugas` | `id_petugas`, `kode_petugas` | Kedua atribut merupakan kunci pada skema kanonik. Tidak ditemukan pelanggaran berdasarkan dependensi yang diketahui. |
| `anggota` | `id_anggota`, `no_anggota`, `nim_anggota` | Ketiganya merupakan kunci pada skema kanonik. Tidak ditemukan pelanggaran berdasarkan dependensi yang diketahui. |
| `barang` | `id_barang`, `kode_barang` | Keduanya merupakan kunci pada skema kanonik. Tidak ditemukan pelanggaran berdasarkan dependensi yang diketahui. |
| `pemasok` | `id_pemasok` | PK diketahui, tetapi dependensi atribut lainnya belum tersedia secara lengkap. |
| `penjualan` | `id_penjualan`, `no_nota_penjualan` | Keduanya merupakan kunci pada skema kanonik. Tidak ditemukan pelanggaran berdasarkan dependensi yang diketahui. |
| `detail_penjualan` | `(id_penjualan, id_barang)` | Kunci komposit menentukan atribut detail transaksi berdasarkan dependensi yang diketahui. |
| `pembelian` | `id_pembelian` | PK diketahui, tetapi dependensi atribut lainnya belum tersedia secara lengkap. |
| `detail_pembelian` | `(id_pembelian, id_barang)` | Kunci komposit diketahui, tetapi dependensi atribut lainnya perlu diperiksa berdasarkan aturan bisnis pembelian. |

Berdasarkan informasi yang tersedia, belum cukup bukti untuk menyimpulkan bahwa seluruh tabel pasti memenuhi BCNF. Pemeriksaan lanjutan memerlukan dependensi fungsional lengkap dari setiap tabel, terutama pemasok, pembelian, dan detail pembelian. 

## E. Latihan dan Modifikasi

### 1. Normalisasi Nomor Telepon Pemasok

Kopma ingin mencatat beberapa nomor telepon untuk setiap pemasok.
Apabila beberapa nomor telepon disimpan dalam satu kolom, data
tersebut tidak memenuhi prinsip 1NF karena satu kolom berisi
lebih dari satu nilai.

Untuk mengatasi masalah tersebut, data nomor telepon dipisahkan
ke dalam relasi tersendiri.

**Relasi PEMASOK_TELEPON**

PEMASOK_TELEPON (
    id_pemasok,
    no_telepon_pemasok
)

### 2. Contoh Anomali Ubah pada Tabel Penjualan

Apabila `nama_anggota` disimpan langsung dalam tabel penjualan, nama anggota yang sama dapat tercatat berulang pada beberapa transaksi. Hal ini dapat menimbulkan anomali ubah apabila perubahan nama hanya dilakukan pada sebagian baris.

Contoh data ilustrasi pada tabel `penjualan_tidak_3nf`:

| no_nota_penjualan | no_anggota | nama_anggota |
|---|---|---|
| PJ-001 | A-0001 | Ayu Lestari |
| PJ-002 | A-0001 | Ayu Lestari |

Kedua transaksi tersebut menggunakan nomor anggota yang sama. Apabila nama anggota berubah menjadi `Ayu Lestari Putri`, tetapi perubahan hanya dilakukan pada transaksi `PJ-001`, data akan menjadi tidak konsisten.

Contoh kueri yang memperlihatkan anomali ubah:

```sql
UPDATE penjualan_tidak_3nf
SET nama_anggota = 'Ayu Lestari Putri'
WHERE no_nota_penjualan = 'PJ-001';
```

Kueri tersebut hanya mengubah nama anggota pada transaksi `PJ-001`, sedangkan transaksi `PJ-002` masih menyimpan nama lama. Akibatnya, anggota yang sama memiliki dua penulisan nama berbeda pada tabel penjualan.
Untuk menghindari masalah tersebut, informasi anggota sebaiknya disimpan dalam tabel `anggota`, sedangkan tabel `penjualan` cukup menyimpan `no_anggota` sebagai kunci tamu (*foreign key*). Dengan demikian, nama anggota dikelola pada satu tempat dan tidak perlu diulang pada setiap transaksi.