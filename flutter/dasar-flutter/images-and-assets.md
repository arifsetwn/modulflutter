# Images & Assets

### **Image**

#### **1. Pengertian Image dalam Flutter**

Image adalah widget yang digunakan untuk menampilkan gambar pada aplikasi Flutter. Gambar bisa berasal dari berbagai sumber, seperti file lokal, URL, atau memori aplikasi.

#### **2. Jenis Sumber Image**

1. **Network Images**: Mengambil gambar dari URL menggunakan `Image.network`.
2. **Asset Images**: Mengambil gambar dari file lokal yang terdaftar di proyek Flutter menggunakan `Image.asset`.
3. **Memory Images**: Menampilkan gambar langsung dari memori menggunakan `Image.memory`.

#### **3. Properti Penting pada Image**

* **fit**: Mengatur cara gambar diatur dalam widget (misalnya `BoxFit.cover`, `BoxFit.contain`).
* **width** dan **height**: Mengatur ukuran gambar.
* **color** dan **colorBlendMode**: Memberikan efek warna pada gambar.

***

#### **4. Contoh Implementasi Image**

**a. Menampilkan Gambar dari URL**

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Network Image Example'),
        ),
        body: Center(
          child: Image.network(
            'https://example.com/sample-image.jpg',
            width: 300,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
```

**b. Menampilkan Gambar dari Asset**

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Asset Image Example'),
        ),
        body: Center(
          child: Image.asset(
            'assets/images/sample.png',
            width: 300,
            height: 200,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
```

***

### **Assets**

#### **1. Pengertian Assets**

Assets adalah file non-kode yang dikemas bersama aplikasi. Assets mencakup gambar, font, ikon, dan file lainnya. Dalam Flutter, assets digunakan untuk menambahkan elemen statis ke aplikasi.

#### **2. Menambahkan Assets ke Proyek**

1. **Menyimpan File**
   * Simpan file ke folder, misalnya `assets/images/`.
2. **Mengkonfigurasi File pubspec.yaml**
   *   Tambahkan daftar asset di file `pubspec.yaml`:

       ```yaml
       flutter:
         assets:
           - assets/images/sample.png
       ```
3. **Menggunakan Assets**
   * Gunakan widget `Image.asset` untuk menampilkan gambar.

***

#### **3. Contoh Konfigurasi Assets**

**Struktur Folder**

```
project/
├── assets/
│   └── images/
│       └── sample.png
├── pubspec.yaml
```

**Kode dalam pubspec.yaml**

```yaml
flutter:
  assets:
    - assets/images/sample.png
```

***



#### **Contoh Aplikasi**

**Kode**

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image & Assets Example'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Image from Network',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Image.network(
              'https://example.com/sample-image.jpg',
              width: 200,
              height: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'Image from Asset',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Image.asset(
              'assets/images/sample.png',
              width: 200,
              height: 150,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
```

**Penjelasan**

* **Network Image**: Menampilkan gambar dari URL menggunakan `Image.network`.
* **Asset Image**: Menampilkan gambar lokal menggunakan `Image.asset`.
