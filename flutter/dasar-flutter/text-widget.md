# Text Widget



### **Text Widget**

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

<figure><img src="../../.gitbook/assets/image (36).png" alt=""><figcaption></figcaption></figure>
