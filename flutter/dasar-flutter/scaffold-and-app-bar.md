# Scaffold & App Bar

### **Scaffold**

#### **1. Pengertian Scaffold**

Scaffold adalah widget dasar dalam Flutter yang menyediakan struktur dan tata letak untuk aplikasi. Scaffold menawarkan kerangka kerja untuk membuat antarmuka , seperti bar atas (AppBar), area konten (Body), tombol mengambang (FloatingActionButton), dan lainnya.

#### **2. Komponen Utama Scaffold**

* **AppBar**: Area di bagian atas yang biasanya digunakan untuk menampilkan judul atau navigasi.
* **Body**: Area utama untuk menampilkan konten aplikasi.
* **FloatingActionButton**: Tombol mengambang yang sering digunakan untuk tindakan utama.
* **Drawer**: Panel navigasi yang dapat digeser dari sisi layar.
* **BottomNavigationBar**: Bar navigasi di bagian bawah aplikasi.
* **SnackBar**: Pesan notifikasi sementara yang muncul di bagian bawah.

#### **3. Contoh Implementasi Scaffold**

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
          title: Text('Scaffold Example'),
        ),
        body: Center(
          child: Text(
            'Hello, Flutter!',
            style: TextStyle(fontSize: 24),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Button Pressed');
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
```

**Penjelasan**

* **AppBar**: Berisi judul "Scaffold Example".
* **Body**: Menampilkan teks di tengah layar.
* **FloatingActionButton**: Tombol mengambang untuk tindakan utama.

<figure><img src="../../.gitbook/assets/Screenshot 2024-12-04 at 13.57.55.png" alt=""><figcaption></figcaption></figure>



### **AppBar**

#### **1. Pengertian AppBar**

AppBar adalah widget yang berada di bagian atas aplikasi. Biasanya digunakan untuk menampilkan judul, ikon, dan tombol navigasi. AppBar merupakan bagian dari Scaffold.

#### **2. Komponen Utama AppBar**

* **Title**: Menampilkan teks atau widget di tengah AppBar.
* **Leading**: Biasanya digunakan untuk menampilkan tombol navigasi atau ikon di sisi kiri.
* **Actions**: Menampilkan daftar ikon atau tombol di sisi kanan.
* **BackgroundColor**: Menentukan warna latar belakang AppBar.

#### **3. Contoh Implementasi AppBar**

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
          title: Text('AppBar Example'),
          leading: Icon(Icons.menu),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('Search Pressed');
              },
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                print('More Pressed');
              },
            ),
          ],
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Text(
            'AppBar with Actions',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
```

**Penjelasan**

* **Title**: Berisi teks "AppBar Example".
* **Leading**: Ikon menu di sisi kiri.
* **Actions**: Dua ikon di sisi kanan, masing-masing dengan fungsi `onPressed`.
* **BackgroundColor**: Warna latar belakang AppBar diubah menjadi biru.

<figure><img src="../../.gitbook/assets/Screenshot 2024-12-04 at 13.58.39.png" alt=""><figcaption></figcaption></figure>

