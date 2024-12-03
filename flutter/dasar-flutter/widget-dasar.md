# Widget Dasar



### **1. Text Widget**

#### **1. Pengertian Text Widget**

`Text` adalah widget untuk menampilkan teks pada aplikasi Flutter. Widget ini mendukung berbagai opsi styling seperti ukuran, warna, ketebalan, dan jarak.

#### **2. Properti Penting Text Widget**

* `data`: Isi teks.
* `style`: Mengatur gaya teks menggunakan `TextStyle`.
* `textAlign`: Mengatur perataan teks (`left`, `right`, `center`).
* `overflow`: Mengatur bagaimana teks ditampilkan jika terlalu panjang (`ellipsis`, `fade`).

#### **3. Contoh Implementasi Text Widget**

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
        body: Center(
          child: Text(
            'Hello, Flutter!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
```

### **2. Row Widget**

#### **1. Pengertian Row Widget**

`Row` digunakan untuk mengatur tata letak widget secara horizontal.

#### **2. Properti Penting Row**

* `mainAxisAlignment`: Mengatur posisi widget di sumbu utama.
* `crossAxisAlignment`: Mengatur posisi widget di sumbu silang.
* `children`: Daftar widget yang ditampilkan dalam baris.

#### **3. Contoh Implementasi Row Widget**

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
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.star, color: Colors.yellow, size: 50),
            Icon(Icons.star, color: Colors.yellow, size: 50),
            Icon(Icons.star, color: Colors.yellow, size: 50),
          ],
        ),
      ),
    );
  }
}
```

***

### **3. Column Widget**

#### **1. Pengertian Column Widget**

`Column` digunakan untuk mengatur tata letak widget secara vertikal.

#### **2. Properti Penting Column**

* `mainAxisAlignment`: Mengatur posisi widget di sumbu utama.
* `crossAxisAlignment`: Mengatur posisi widget di sumbu silang.
* `children`: Daftar widget yang ditampilkan dalam kolom.

#### **3. Contoh Implementasi Column Widget**

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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.star, color: Colors.red, size: 50),
            Text(
              'Column Widget',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                print('Button in Column');
              },
              child: Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}
```
