# Doughsy Mobile

Nama : Valiza Nadya Jatikansha

NPM : 2306240156

Kelas : PBP B

- [Tugas 7](#tugas-7)
- [Tugas 8](#tugas-8)
- [Tugas 9](#tugas-9)

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

## Tugas Individu 8 <a id="tugas-8"></a>

### 1. Apa kegunaan `const` di Flutter? Jelaskan apa keuntungan ketika menggunakan `const` pada kode Flutter. Kapan sebaiknya kita menggunakan `const`, dan kapan sebaiknya tidak digunakan?

Kegunaan `const` di Flutter adalah untuk mendefinisikan objek yang bersifat tetap (immutable) dan diinisialisasi pada saat kompilasi. Dengan kata lain, `const` memungkinkan Flutter untuk mengoptimalkan penggunaan memori dengan menghindari pembuatan ulang objek yang sama. 

**Keuntungan menggunakan `const`:**
- **Efisiensi Memori**: Flutter akan menyimpan objek yang didefinisikan dengan `const` di memori hanya satu kali, sehingga mengurangi alokasi memori yang tidak diperlukan.
- **Kinerja Lebih Cepat**: Penggunaan `const` mengurangi overhead penghitungan ulang objek pada saat rendering.
- **Kode yang Lebih Jelas**: Menandakan bahwa widget atau nilai tersebut tidak akan pernah berubah.

**Kapan menggunakan `const`:**
`const` digunakan saat mendefinisikan widget atau objek yang bersifat statis, seperti teks, ikon, padding, dan warna yang tidak akan berubah.

**Contoh penggunaan `const`**
```
const Padding(
  padding: EdgeInsets.all(8.0),
  child: Text(
    'Welcome to Doughsy',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18.0,
    ),
  ),
);
```

### 2. Jelaskan dan bandingkan penggunaan `Column` dan `Row` pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

**`Column`** dan **`Row`** adalah widget untuk menyusun elemen secara vertikal dan horizontal:

- **`Column`** menyusun elemen secara vertikal (dari atas ke bawah).
- **`Row`** menyusun elemen secara horizontal (dari kiri ke kanan).
- Keduanya memiliki properti seperti `MainAxisAlignment` untuk mengatur posisi elemen di sepanjang sumbu utama dan `CrossAxisAlignment` untuk mengatur posisi elemen di sepanjang sumbu silang.

**Contoh penggunaan `Column`:**
```
Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    const Padding(
      padding: EdgeInsets.only(top: 16.0),
      child: Text(
        'Welcome to Doughsy',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
        ),
      ),
    ),
    GridView.count(
      primary: true,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 3,
      shrinkWrap: true,
      children: items.map((ItemHomepage item) {
        return ItemCard(item); // Menggunakan ItemCard untuk setiap item
      }).toList(),
    ),
  ],
)
```
Penjelasan:
`Column` ini menyusun elemen secara vertikal, termasuk teks sambutan dan `GridView` untuk menampilkan `ItemCard`.

**Contoh penggunaan `Row`:**
```
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    InfoCard(title: 'NPM', content: '2306240156'),
    InfoCard(title: 'Name', content: 'Valiza Nadya Jatikansha'),
    InfoCard(title: 'Class', content: 'PBP B'),
  ],
)
```
Penjelasan:
`Row` ini digunakan untuk menampilkan tiga `InfoCard` secara horizontal dengan jarak yang merata antar elemen (`mainAxisAlignment: MainAxisAlignment.spaceEvenly`).

### 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

**Elemen input yang digunakan:**
- **`TextFormField`**: Untuk input teks seperti nama produk, topping, deskripsi.
- **`DropdownButtonFormField`**: Untuk memilih kategori dan ukuran produk.

**Elemen input yang tidak digunakan:**
- **`Checkbox`**: Untuk input pilihan boolean (tidak digunakan dalam form ini).
- **`Radio`**: Untuk memilih satu dari beberapa pilihan (tidak digunakan).
- **`Slider`**: Untuk memilih nilai dari rentang tertentu.
- **`Switch`**: Untuk input on/off.
- **`DatePicker` dan `TimePicker`**: Untuk memilih tanggal dan waktu.

Pemilihan elemen input tergantung pada kebutuhan form dan data yang ingin dimasukkan pengguna.

### 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

Untuk menjaga konsistensi tema dalam aplikasi, saya menggunakan `ThemeData` di dalam `MaterialApp` pada root aplikasi. Ini memastikan warna utama, warna sekunder, dan elemen lainnya konsisten di seluruh aplikasi.

**Implementasi:**
```
MaterialApp(
  title: 'Doughsy',
  theme: ThemeData(
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: Colors.blueGrey.shade800,
      secondary: Colors.deepPurple.shade400,
    ),
  ),
  home: MyHomePage(),
)
```

### 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

Saya menggunakan widget `Navigator` dan `MaterialPageRoute` untuk menangani navigasi antar halaman. Berikut langkah-langkahnya:

1. **Navigasi ke halaman baru menggunakan `Navigator.push()`:**
**Method `push()`** digunakan untuk menambahkan sebuah route baru ke dalam stack yang dikelola oleh `Navigator`. Route yang ditambahkan akan berada di paling atas stack, sehingga halaman baru tersebut akan langsung ditampilkan kepada pengguna, sementara halaman sebelumnya tetap ada di bawahnya dalam stack.
   ```
   Navigator.push(
     context,
     MaterialPageRoute(builder: (context) => ProductEntryFormPage()),
   );
   ```
Ketika tombol atau menu untuk menambah produk ditekan, aplikasi akan membuka halaman `ProductEntryFormPage` dan menempatkannya di atas stack.

2. **Kembali ke halaman sebelumnya menggunakan `Navigator.pop()`:**
**Method `pop()`** digunakan untuk menghapus atau menghilangkan halaman yang sedang aktif (paling atas) dari stack yang dikelola oleh `Navigator`. Hal ini menyebabkan pengguna kembali ke halaman sebelumnya yang ada di bawahnya dalam stack.
   ```
   Navigator.pop(context);
   ```
Jika pengguna menekan tombol back atau menyelesaikan input di sebuah form, halaman saat ini akan dihapus dari stack dan pengguna akan kembali ke halaman sebelumnya. 

3. **Navigasi dengan menggantikan halaman saat ini menggunakan `Navigator.pushReplacement()`:**
**Method `pushReplacement()`** menggantikan halaman yang sedang aktif dengan halaman baru tanpa menambahkan halaman lama ke dalam stack. Artinya, halaman lama akan dihapus dan digantikan oleh halaman baru, sehingga pengguna tidak dapat kembali ke halaman sebelumnya dengan menekan tombol back.
   ```
   Navigator.pushReplacement(
     context,
     MaterialPageRoute(builder: (context) => MyHomePage()),
   );
   ```
Ketika pengguna menyelesaikan suatu proses (setelah menambahkan produk), halaman `MyHomePage` akan menggantikan halaman saat ini tanpa menyimpan halaman sebelumnya di stack.

## Tugas Individu 9 <a id="tugas-9"></a>

### 1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?

Model membantu dalam merepresentasikan struktur data yang akan digunakan dalam aplikasi. Dalam konteks pengambilan atau pengiriman data JSON, model memberikan kerangka yang terstruktur untuk menguraikan data dari backend atau mengirim data ke backend. Tanpa model, pengelolaan data bisa menjadi tidak terstruktur dan dapat menyebabkan error, terutama jika format data tidak sesuai dengan yang diharapkan. Penggunaan model juga meningkatkan keterbacaan, pemeliharaan, dan validasi data.

Tanpa model, error parsing atau kesulitan dalam memproses data dapat terjadi, terutama ketika data berisi banyak atribut atau memiliki tipe data yang kompleks. Model memastikan bahwa data diproses secara konsisten dengan struktur yang terdefinisi dan memudahkan validasi serta pengendalian data sebelum dikirim atau diterima. 

### 2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini

Library http digunakan untuk melakukan permintaan HTTP (request) seperti `GET`, `POST`, `PUT`, atau `DELETE` ke server. Dalam proyek ini, `http` digunakan untuk:
- Mengambil data produk dari server melalui endpoint tertentu (misalnya, daftar produk).
- Mengirim data seperti form input ke server.
- Mengelola respons dari server.

Contoh penggunaan library http:
```
Future<List<Doughsy>> fetchProducts(CookieRequest request) async {
  final response = await request.get('http://localhost:8000/json/');
  List<Doughsy> productList = [];
  for (var d in response) {
    if (d != null) {
      productList.add(Doughsy.fromJson(d));
    }
  }
  return productList;
}
```

### 3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

`CookieRequest` adalah library yang mempermudah pengelolaan autentikasi, seperti login, logout, dan pengiriman request dengan cookies session di Flutter. Dengan `CookieRequest`, informasi sesi dapat dikelola dan dikirimkan secara otomatis. Instance `CookieRequest` perlu dibagikan ke semua komponen menggunakan `Provider` agar semua komponen dapat mengakses status autentikasi dan informasi sesi pengguna tanpa perlu membuat ulang atau memisahkan request.

### 4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.

1. **Input Data**: Pengguna mengisi data melalui form Flutter, seperti menambahkan produk baru. Contoh input form:
   ```dart
   TextFormField(
     controller: _itemNameController,
     decoration: InputDecoration(labelText: 'Item Name'),
   );
   ```
2. **Validasi Data**: Data diverifikasi apakah sesuai (contoh: tidak kosong).
3. **Mengirim Data ke Server**: Data dikirim melalui `POST` request menggunakan `CookieRequest` atau `http`.
   ```
   final response = await request.postJson(
     "http://localhost:8000/create-product/",
     jsonEncode({"item_name": _itemNameController.text, ...}),
   );
   ```
4. **Server Memproses Data**: Server Django menerima dan memproses data, kemudian memberikan respons.
5. **Menampilkan Data**: Setelah data berhasil diproses, data diambil kembali dari server menggunakan `GET` request dan ditampilkan di aplikasi menggunakan widget seperti `ListView`.


### 5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

1. **Login**: Pengguna memasukkan username dan password, kemudian `CookieRequest` mengirim `POST` request ke endpoint `/auth/login/`. Jika berhasil, server merespons dengan cookie sesi untuk mengidentifikasi pengguna.
2. **Register**: Data username dan password dikirimkan ke server melalui `POST` request. Jika berhasil, akun baru dibuat.
3. **Logout**: `CookieRequest` mengirim `POST` request ke endpoint `/auth/logout/`. Jika berhasil, sesi pengguna dihapus.

Setelah login, menu utama atau halaman sesuai ditampilkan, dan data yang memerlukan autentikasi dapat diakses menggunakan session cookies.

### 6. Implementasi Checklist Secara Step-by-Step

Baik, berikut ini adalah penjelasan revisi dengan menggunakan imbuhan "me-" di awal kata kerja:

**1. Mengimplementasikan Fitur Registrasi Akun pada Proyek Flutter**

- **Backend Django**: Menggunakan endpoint registrasi yang menerima data username, password, dan melakukan validasi. Contohnya:
  ```
  from django.contrib.auth.models import User
  from django.http import JsonResponse
  from django.views.decorators.csrf import csrf_exempt
  import json

  @csrf_exempt
  def register(request):
      if request.method == 'POST':
          data = json.loads(request.body)
          username = data.get('username')
          password1 = data.get('password1')
          password2 = data.get('password2')

          if password1 != password2:
              return JsonResponse({"status": False, "message": "Passwords do not match."})
          if User.objects.filter(username=username).exists():
              return JsonResponse({"status": False, "message": "Username already exists."})

          user = User.objects.create_user(username=username, password=password1)
          user.save()
          return JsonResponse({"status": 'success', "message": "User created successfully!"})
      return JsonResponse({"status": False, "message": "Invalid request."})
  ```
- **Frontend Flutter**: Menggunakan halaman  `register.dart` yang menerima input username dan password, kemudian mengirimkan data ke endpoint tersebut menggunakan `pbp_django_auth`.

**2. Membuat Halaman Login pada Proyek Flutter**

- **Backend Django**: Menggunakan endpoint login yang menerima username dan password serta melakukan autentikasi pengguna.
- **Frontend Flutter**: Membuat halaman `login.dart` yang memiliki form untuk menerima input username dan password, kemudian mengirimkan data tersebut ke backend untuk autentikasi menggunakan `pbp_django_auth`. Jika berhasil login, pengguna diarahkan ke halaman beranda.

**3. Mengintegrasikan Sistem Autentikasi Django dengan Proyek Flutter**

- **Menggunakan `pbp_django_auth` di proyek Flutter**:
  - Menambahkan `Provider` untuk `CookieRequest` di widget utama aplikasi, seperti:
    ```
    class MyApp extends StatelessWidget {
      const MyApp({super.key});

      @override
      Widget build(BuildContext context) {
        return Provider(
          create: (_) => CookieRequest(),
          child: MaterialApp(
            home: LoginPage(),
          ),
        );
      }
    }
    ```

**4. Membuat Model Kustom Sesuai dengan Proyek Aplikasi Django**

- **Menggunakan Quicktype** untuk menghasilkan model Dart dari JSON.
  - Jalankan endpoint JSON pada Django untuk mendapatkan data.
  - Salin data JSON dan buka situs Quicktype.
  - Tempel data dan pilih output Dart.
  - Buat folder `models` di proyek Flutter dan simpan model yang dihasilkan dalam file seperti `product_entry.dart`.

**5. Membuat Halaman yang Berisi Daftar Semua Item dari Endpoint JSON**

- Menggunakan data JSON dari endpoint Django untuk menampilkan daftar item di Flutter menggunakan `FutureBuilder` dan `ListView.builder`.
- Contoh kode:
  ```dart
  Future<List<Product>> fetchProducts(CookieRequest request) async {
    final response = await request.get('http://localhost:8000/json/');
    var data = response;
    return List<Product>.from(data.map((item) => Product.fromJson(item)));
  }
  ```

**6. Menampilkan Name, Price, dan Description dari Masing-Masing Item**

- Menggunakan `ListView.builder` untuk menampilkan item dengan informasi yang diinginkan (name, price, dan description).

**7. Membuat Halaman Detail untuk Setiap Item**

- Membuat halaman `product_detail.dart` pada direktori `screens`
- Me-navigasi `ProductEntryPage` pada halaman `list_productentru.dart` ke `ProductDetailPage` pada `product_detail.dart` dengan parameter ID produk yang dipilih.

**8. Menampilkan Seluruh Atribut pada Halaman Detail**

- Menggunakan `FutureBuilder` untuk mengambil detail data produk berdasarkan ID.
- Menampilkan semua atribut produk di halaman detail, seperti contoh kode `product_detail.dart`.

**9. Melakukan Filter pada Halaman Daftar Item untuk Hanya Menampilkan Produk yang Terasosiasi dengan Pengguna yang Login**

- Membuat Django view `get_user_products` untuk mengambil produk yang dimiliki oleh pengguna yang login:
  ```python
  @login_required
  def get_user_products(request):
      products = Product.objects.filter(user=request.user)
      products_data = list(products.values('id', 'item_name', 'price', 'description'))
      return JsonResponse(products_data, safe=False)
  ```

