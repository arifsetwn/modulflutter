# Button & Icons

### Button

#### **1. Pengertian Button dalam Flutter**

Button adalah widget interaktif yang memicu suatu tindakan ketika diklik atau ditekan. Flutter menyediakan berbagai jenis button untuk berbagai kebutuhan, seperti:

* **ElevatedButton**: Button dengan efek bayangan (terangkat).
* **TextButton**: Button berbasis teks tanpa bayangan.
* **OutlinedButton**: Button dengan garis tepi.
* **IconButton**: Button dengan ikon.
* **FloatingActionButton (FAB)**: Button melayang yang biasa digunakan untuk tindakan utama.

#### **2. Properti Umum Button**

* **onPressed**: Fungsi yang dipanggil ketika button ditekan.
* **onLongPress**: Fungsi yang dipanggil ketika button ditekan lama.
* **style**: Menentukan gaya button (warna, bentuk, dll).
* **child**: Widget yang ditampilkan di dalam button.

#### **3. Contoh Implementasi Button**

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
          title: Text('Button Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  print('ElevatedButton Pressed');
                },
                child: Text('Elevated Button'),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  print('TextButton Pressed');
                },
                child: Text('Text Button'),
              ),
              SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {
                  print('OutlinedButton Pressed');
                },
                child: Text('Outlined Button'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

**Penjelasan**

* **ElevatedButton**: Button dengan efek bayangan.
* **TextButton**: Button sederhana tanpa bayangan.
* **OutlinedButton**: Button dengan garis tepi.

<figure><img src="../../.gitbook/assets/Screenshot 2024-12-04 at 14.00.27.png" alt=""><figcaption></figcaption></figure>



***

### **Icons**

#### **1. Pengertian Icons dalam Flutter**

Ikon adalah elemen grafis yang sering digunakan untuk memperkuat antarmuka pengguna. Flutter menyediakan banyak ikon bawaan melalui `Icons` dan mendukung ikon kustom menggunakan file `SVG` atau `PNG`.

#### **2. Ikon Bawaan Flutter**

* **Class `Icons`**: Berisi berbagai ikon Material Design, seperti `Icons.home`, `Icons.search`.
* **Properti `color`**: Mengubah warna ikon.
* **Properti `size`**: Mengubah ukuran ikon.

#### **3. Menggunakan Ikon Kustom**

* Tambahkan file ikon ke dalam folder `assets`.
*   Tambahkan ke file `pubspec.yaml`:

    ```yaml
    flutter:
      assets:
        - assets/icons/custom_icon.png
    ```
* Gunakan widget `Image.asset()` untuk menampilkan ikon kustom.

#### **4. Contoh Implementasi Icons**

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
          title: Text('Icons Example'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.favorite,
                color: Colors.red,
                size: 50,
              ),
              SizedBox(width: 10),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 50,
              ),
              SizedBox(width: 10),
              Icon(
                Icons.home,
                color: Colors.blue,
                size: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

**Penjelasan**

* **Icons.favorite**: Ikon hati dengan warna merah.
* **Icons.star**: Ikon bintang dengan warna kuning.
* **Icons.home**: Ikon rumah dengan warna biru.

<figure><img src="../../.gitbook/assets/Screenshot 2024-12-04 at 14.01.06.png" alt=""><figcaption></figcaption></figure>



***

### **Kombinasi Button dan Icons**

#### **1. Contoh Implementasi**

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
          title: Text('Button & Icons'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  print('ElevatedButton with Icon Pressed');
                },
                icon: Icon(Icons.add),
                label: Text('Add Item'),
              ),
              SizedBox(height: 20),
              IconButton(
                onPressed: () {
                  print('IconButton Pressed');
                },
                icon: Icon(Icons.delete),
                color: Colors.red,
                iconSize: 40,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('FloatingActionButton Pressed');
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
```

**Penjelasan**

* **ElevatedButton.icon**: Button dengan ikon dan teks.
* **IconButton**: Button khusus ikon.
* **FloatingActionButton**: Button melayang dengan ikon.

<figure><img src="../../.gitbook/assets/Screenshot 2024-12-04 at 14.03.05.png" alt=""><figcaption></figcaption></figure>

