# Doughsy Mobile

Nama : Valiza Nadya Jatikansha

NPM : 2306240156

Kelas : PBP B

## Tugas Individu 7 <a id="tugas-7"></a>

### 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
- **Stateless Widget** adalah widget yang tidak memiliki state atau kondisi yang dapat berubah. Stateless widgets bersifat statis dan hanya dirender satu kali saat aplikasi dijalankan. Contohnya adalah teks atau ikon yang tidak berubah.

- **Stateful Widget** adalah widget yang memiliki state yang bisa berubah selama runtime aplikasi. Stateful widgets cocok untuk elemen UI yang memerlukan interaksi pengguna atau perubahan data. Contohnya, tombol yang berubah warna saat ditekan.

### 2.Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
- **MaterialApp**: Widget utama untuk konfigurasi dasar aplikasi, seperti `title`, `theme`, dan `home`. Menampilkan halaman utama `MyHomePage`.
  
- **Scaffold**: Struktur dasar halaman yang menyediakan `AppBar` dan `body`.

- **AppBar**: Bar navigasi di bagian atas yang menampilkan judul "Doughsy" dengan warna dan gaya teks khusus.

- **Padding**: Memberikan jarak di sekitar widget, digunakan di beberapa tempat seperti di sekitar `Column` utama.

- **Column**: Menyusun widget secara vertikal, digunakan untuk menampilkan `Row` dan `GridView` secara vertikal.

- **Row**: Menyusun widget secara horizontal, digunakan untuk menampilkan `InfoCard` yang berisi `NPM`, `Name`, dan `Class`.

- **InfoCard**: Custom widget berbasis `Card` untuk menampilkan informasi dengan judul dan konten, seperti `NPM`, `Name`, dan `Class`.

- **Card**: Menampilkan elemen dalam bentuk kartu dengan bayangan dan padding. Digunakan dalam `InfoCard`.

- **GridView.count**: Menyusun widget dalam grid dengan jumlah kolom tertentu (`crossAxisCount`), digunakan untuk menampilkan `ItemCard` dalam tiga kolom.

- **ItemCard**: Custom widget untuk item dengan `Icon` dan `Text` dalam `GridView`, menampilkan opsi seperti `Lihat Daftar Produk`, `Tambah Produk`, dan `Logout`.

- **Material**: Memberikan efek material, seperti bayangan dan bentuk (rounded corners). Digunakan dalam `ItemCard`.

- **InkWell**: Menyediakan efek ripple pada klik. Pada `ItemCard`, `InkWell` menampilkan `SnackBar` ketika item ditekan.

- **SnackBar**: Menampilkan pesan sementara di bagian bawah layar, digunakan untuk menunjukkan pesan saat item ditekan.

- **Icon**: Menampilkan ikon dari `Icons` Flutter. Pada `ItemCard`, digunakan untuk menunjukkan ikon sesuai atribut `ItemHomepage`.

- **Text**: Menampilkan teks, digunakan di berbagai tempat untuk judul, informasi, dan label item di `ItemCard`.

- **Center**: Menempatkan widget di tengah layar, digunakan untuk memastikan `GridView` berada di tengah layar.

- **SizedBox**: Memberikan ruang tetap di antara widget, digunakan untuk jarak vertikal dalam `Column`.

### 3. Apa fungsi dari `setState()?` Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
**setState()** adalah fungsi dalam Stateful widgets yang digunakan untuk memperbarui state. Ketika `setState()` dipanggil, Flutter akan merender ulang widget yang menggunakan state yang berubah. Variabel yang berada dalam kelas Stateful yang mempengaruhi UI dapat diperbarui dengan `setState()`.

Variabel yang terdampak oleh `setState()`
Variabel yang berada dalam objek `State` dari `StatefulWidget` dan memengaruhi UI akan terdampak ketika `setState()` dipanggil. Variabel ini termasuk:
1. **Variabel yang Menyimpan Data UI**: Misalnya, variabel untuk teks, warna, atau ikon yang ditampilkan di layar.
2. **Variabel Kontrol untuk Tampilan atau Perilaku**: Contohnya, variabel seperti `isLoading` untuk menunjukkan status loading, `selectedIndex` untuk tab atau item yang dipilih, atau `counter` dalam aplikasi counter.
3. **Data yang Diambil Secara Dinamis**: Misalnya, data dari API yang kemudian disimpan dalam variabel state dan ditampilkan di UI.


### 4. Jelaskan perbedaan antara `const` dengan `final`.
- **const**: Digunakan untuk mendefinisikan nilai konstan yang sudah diketahui pada waktu kompilasi. Nilai ini harus diinisialisasi saat deklarasi dan tidak dapat diubah.

- **final**: Digunakan untuk variabel yang nilainya hanya ditentukan satu kali dan tidak dapat diubah setelah itu. Nilainya dapat diketahui saat runtime, bukan hanya saat kompilasi.

### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

1. Membuat Proyek Flutter Baru
- Menjalankan command `flutter create <APP_NAME>` kemudian `cd <APP_NAME>`

2. Membuat Tiga Tombol dengan Ikon dan Teks:

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

3. Implementasi Snackbar untuk Setiap Tombol:
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

4. Menjalankan Aplikasi
- Setelah implementasi selesai, mjalankan aplikasi menggunakan command `flutter run`