# Doughsy Mobile

Nama : Valiza Nadya Jatikansha

NPM : 2306240156

Kelas : PBP B

## Tugas Individu 7 <a id="tugas-7"></a>

### 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
- **Stateless Widget** adalah widget yang tidak memiliki state atau kondisi yang dapat berubah. Stateless widgets bersifat statis dan hanya dirender satu kali saat aplikasi dijalankan. Contohnya adalah teks atau ikon yang tidak berubah.
- **Stateful Widget** adalah widget yang memiliki state yang bisa berubah selama runtime aplikasi. Stateful widgets cocok untuk elemen UI yang memerlukan interaksi pengguna atau perubahan data. Contohnya, tombol yang berubah warna saat ditekan.

### 2.Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
- **MaterialApp**: Menjadi root dari aplikasi, menyediakan tema dan pengaturan routing.
- **Scaffold**: Struktur dasar halaman yang mendukung AppBar, body, dan floating action button.
- **AppBar**: Menyediakan bar navigasi di bagian atas aplikasi dengan judul.
- **Row**: Menyusun elemen secara horizontal.
- **Column**: Menyusun elemen secara vertikal.
- **Card**: Menampilkan informasi dalam kotak dengan bayangan.
- **GridView.count**: Menyusun elemen dalam bentuk grid dengan jumlah kolom yang tetap.
- **InkWell**: Membuat elemen dapat ditekan dengan efek visual.
- **ScaffoldMessenger**: Menampilkan Snackbar untuk memberikan notifikasi singkat.

### 3. Apa fungsi dari `setState()?` Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
**setState()** adalah fungsi dalam Stateful widgets yang digunakan untuk memperbarui state. Ketika `setState()` dipanggil, Flutter akan merender ulang widget yang menggunakan state yang berubah. Variabel yang berada dalam kelas Stateful yang mempengaruhi UI dapat diperbarui dengan `setState()`.

### 4. Jelaskan perbedaan antara `const` dengan `final`.
- **const**: Digunakan untuk mendefinisikan nilai konstan yang sudah diketahui pada waktu kompilasi. Nilai ini harus diinisialisasi saat deklarasi dan tidak dapat diubah.
- **final**: Digunakan untuk variabel yang nilainya hanya ditentukan satu kali dan tidak dapat diubah setelah itu. Nilainya dapat diketahui saat runtime, bukan hanya saat kompilasi.

### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

1. **Membuat Tiga Tombol dengan Ikon dan Teks:**

- Saya membuat tiga tombol menggunakan `ItemHomepage`, masing-masing dengan nama, ikon, dan warna berbeda:
    - **Lihat Daftar Produk:** Menggunakan ikon `Icons.list` dan warna `Colors.pink.shade800`.
    - **Tambah Produk:** Menggunakan ikon `Icons.add` dan warna `Colors.amber.shade500`.
    - **Logout:** Menggunakan ikon `Icons.logout` dan warna `Colors.red`.
- Untuk menampilkan tombol-tombol ini, saya menggunakan `GridView.count` dengan jumlah kolom tetap (`crossAxisCount: 3`) agar tombol terlihat dalam format grid yang rapi.

    ```
    final List<ItemHomepage> items = [
        ItemHomepage("Lihat Daftar Produk", Icons.list, Colors.pink.shade800),
        ItemHomepage("Tambah Produk", Icons.add, Colors.amber.shade500),
        ItemHomepage("Logout", Icons.logout, Colors.red),
    ];
    ```

2. Implementasi Snackbar untuk Setiap Tombol:
- Pada widget `ItemCard` yang merepresentasikan setiap tombol, saya menggunakan `InkWell` agar setiap tombol dapat ditekan.
- Ketika tombol ditekan (`onTap`), program akan menampilkan pesan `Snackbar` dengan menggunakan `ScaffoldMessenger`. Setiap tombol memiliki pesan yang berbeda sesuai dengan fungsinya:
    - **Lihat Daftar Produk:** "Kamu telah menekan tombol Lihat Daftar Produk".
    - **Tambah Produk:** "Kamu telah menekan tombol Tambah Produk".
    - **Logout:** "Kamu telah menekan tombol Logout".

```
onTap: () {
    String message;
    if (item.name == "Lihat Daftar Produk") {
    message = "Kamu telah menekan tombol Lihat Daftar Produk";
    } else if (item.name == "Tambah Produk") {
    message = "Kamu telah menekan tombol Tambah Produk";
    } else {
    message = "Kamu telah menekan tombol Logout";
    }
    ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
        SnackBar(content: Text(message)),
    );
}
```
