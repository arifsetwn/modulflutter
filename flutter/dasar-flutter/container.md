# Container

####

### **Pengenalan Container**

#### **1. Apa itu Container?**

Container adalah widget serbaguna dalam Flutter yang digunakan untuk membuat dan mengatur tata letak elemen UI. Dengan Container, Anda dapat mengontrol:

* Dimensi (lebar dan tinggi).
* Margin dan padding.
* Warna latar belakang.
* Dekorasi, seperti border dan shadow.
* Penempatan konten di dalamnya.

Container adalah salah satu widget dasar yang sangat sering digunakan untuk mendesain antarmuka pengguna.

***

#### **2. Properti Utama Container**

| **Properti**       | **Fungsi**                                             |
| ------------------ | ------------------------------------------------------ |
| **alignment**      | Mengatur posisi widget anak di dalam Container.        |
| **padding**        | Memberi jarak antara konten dan batas dalam Container. |
| **margin**         | Memberi jarak di luar batas Container.                 |
| **width & height** | Menentukan lebar dan tinggi Container.                 |
| **color**          | Memberikan warna latar belakang pada Container.        |
| **decoration**     | Memberikan dekorasi (contoh: border, radius, shadow).  |
| **child**          | Widget yang ditempatkan di dalam Container.            |

***

### **Implementasi Dasar Container**

#### **1. Contoh Sederhana**

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
          title: Text('Container Example'),
        ),
        body: Center(
          child: Container(
            color: Colors.blue,
            width: 200,
            height: 100,
            child: Center(
              child: Text(
                'Hello, Flutter!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```

**Penjelasan**

* **color**: Memberikan warna latar biru pada Container.
* **width & height**: Menentukan dimensi Container menjadi 200x100.
* **child**: Berisi teks di tengah Container.

<figure><img src="../../.gitbook/assets/Screenshot 2024-12-04 at 14.04.24.png" alt=""><figcaption></figcaption></figure>



***

#### **2. Menambahkan Margin dan Padding**

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
          title: Text('Margin & Padding Example'),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          color: Colors.green,
          child: Text(
            'This is a Container with margin and padding.',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
```

**Penjelasan**

* **margin**: Menambahkan jarak di luar Container sebesar 20 piksel.
* **padding**: Menambahkan jarak di dalam Container sebesar 10 piksel.

<figure><img src="../../.gitbook/assets/Screenshot 2024-12-04 at 14.05.15.png" alt=""><figcaption></figcaption></figure>



***

### **Dekorasi pada Container**

#### **1. Dekorasi dengan BoxDecoration**

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
          title: Text('BoxDecoration Example'),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.orange,
              border: Border.all(
                color: Colors.black,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10,
                  offset: Offset(5, 5),
                ),
              ],
            ),
            child: Center(
              child: Text(
                'Styled Container',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```

**Penjelasan**

* **border**: Menambahkan border hitam dengan lebar 3 piksel.
* **borderRadius**: Membulatkan sudut border dengan radius 15 piksel.
* **boxShadow**: Memberikan efek bayangan pada Container.

<figure><img src="../../.gitbook/assets/Screenshot 2024-12-04 at 14.05.49.png" alt=""><figcaption></figcaption></figure>



***

### **Kombinasi Container**

#### **1. Membuat Desain Kompleks**

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
          title: Text('Nested Containers'),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            color: Colors.blue[100],
            child: Center(
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8,
                      offset: Offset(4, 4),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    'Nested Container',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```

**Penjelasan**

* Membuat **Container besar** sebagai pembungkus.
* **Container kecil** di dalamnya menggunakan dekorasi lebih detail.

<figure><img src="../../.gitbook/assets/Screenshot 2024-12-04 at 14.07.28.png" alt=""><figcaption></figcaption></figure>



