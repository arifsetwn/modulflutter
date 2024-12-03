# Colour & Font

### **Warna (Color)**

#### **1. Pengertian Warna dalam Flutter**

Warna dalam Flutter dikelola menggunakan class `Color` atau melalui palet warna yang telah tersedia di `MaterialColor`. Flutter menyediakan berbagai cara untuk mendefinisikan warna, termasuk:

* Warna bawaan dari palet Material Design (`Colors.red`, `Colors.blue`).
* Warna kustom menggunakan kode heksadesimal (`Color(0xFF123456)`).

#### **2. Cara Mendefinisikan Warna**

1. **Menggunakan Palet Warna Material**
   * Contoh: `Colors.blue`, `Colors.red[400]`.
2. **Kode Heksadesimal**
   * Format: `Color(0xAARRGGBB)`, di mana:
     * **AA**: Alpha (transparansi).
     * **RR**: Red.
     * **GG**: Green.
     * **BB**: Blue.
3. **Opacity**
   * Menggunakan metode `.withOpacity(double opacity)` untuk mengatur transparansi.

#### **3. Contoh Implementasi Warna**

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
          title: Text('Color Example'),
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Blue',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                width: 100,
                color: Color(0xFF42A5F5),
                child: Center(
                  child: Text(
                    'Custom Color',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
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

* **Colors.blue**: Menggunakan palet warna bawaan.
* **Color(0xFF42A5F5)**: Mendefinisikan warna dengan kode heksadesimal.

***

### **Font**

#### **1. Pengertian Font dalam Flutter**

Font digunakan untuk menampilkan teks dengan gaya tertentu. Flutter mendukung:

* Font bawaan sistem.
* Font kustom yang ditambahkan ke proyek.

#### **2. Cara Menambahkan Font**

1. **Menggunakan Font Bawaan**
   * Font default seperti `Roboto` pada Android atau `San Francisco` pada iOS.
2. **Menambahkan Font Kustom**
   * Langkah-langkah:
     1. Unduh file font (misalnya `.ttf`).
     2. Simpan di folder `assets/fonts/`.
     3.  Tambahkan di file `pubspec.yaml`:

         ```yaml
         yamlCopy codeflutter:
           fonts:
             - family: CustomFont
               fonts:
                 - asset: assets/fonts/CustomFont-Regular.ttf
         ```
     4. Gunakan font dengan `TextStyle(fontFamily: 'CustomFont')`.

#### **3. Contoh Implementasi Font**

**Kode**

**1. Font Default**

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
          title: Text('Font Example'),
        ),
        body: Center(
          child: Text(
            'Default Font',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
```

**2. Font Kustom**

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
          title: Text('Custom Font Example'),
        ),
        body: Center(
          child: Text(
            'Custom Font Example',
            style: TextStyle(fontSize: 24, fontFamily: 'CustomFont'),
          ),
        ),
      ),
    );
  }
}
```

**Penjelasan**

* **Font Default**: Tidak perlu konfigurasi tambahan.
* **Font Kustom**: Memerlukan konfigurasi di file `pubspec.yaml`.
