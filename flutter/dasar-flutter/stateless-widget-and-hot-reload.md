# Stateless & Statefull Widget

### **Stateless Widget**

#### **1. Pengertian Stateless Widget**

Stateless Widget adalah widget yang bersifat statis, artinya UI tidak berubah meskipun ada interaksi pengguna. Stateless Widget cocok digunakan untuk elemen yang tampilannya tetap sama selama aplikasi berjalan.

#### **2. Struktur Stateless Widget**

Stateless Widget diimplementasikan dengan meng-override method `build()` yang mengembalikan struktur UI.

#### **3. Contoh Implementasi Stateless Widget**

**Kode**

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyStatelessApp());
}

class MyStatelessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Stateless Widget Example')),
        body: Center(
          child: Text(
            'This is a Stateless Widget',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
```

**Penjelasan**

* **StatelessWidget**: Menggunakan class `StatelessWidget`.
* **build()**: Method ini dipanggil sekali untuk menghasilkan struktur UI.

<figure><img src="../../.gitbook/assets/Screenshot 2024-12-04 at 13.56.03.png" alt=""><figcaption></figcaption></figure>



### **Stateful Widget**

#### **1. Pengertian Stateful Widget**

Stateful Widget adalah widget yang memiliki status (state) yang dapat berubah saat aplikasi berjalan. Contohnya adalah form input, tombol yang dapat diklik, atau daftar yang dapat diperbarui.

#### **2. Struktur Stateful Widget**

Stateful Widget terdiri dari dua bagian:

1. **Stateful Widget Class**: Menyediakan kerangka widget.
2. **State Class**: Menyimpan data dan logika perubahan state.

#### **3. Cara Kerja Stateful Widget**

* **`createState()`**: Menghubungkan widget dengan state-nya.
* **`setState()`**: Memperbarui state sehingga UI dapat di-render ulang.

#### **4. Contoh Implementasi Stateful Widget**

**Kode**

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyStatefulApp());
}

class MyStatefulApp extends StatefulWidget {
  @override
  _MyStatefulAppState createState() => _MyStatefulAppState();
}

class _MyStatefulAppState extends State<MyStatefulApp> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Stateful Widget Example')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'You have pressed the button this many times:',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                '$counter',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: incrementCounter,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
```

**Penjelasan**

* **StatefulWidget Class**: `MyStatefulApp` adalah kerangka widget.
* **State Class**: `_MyStatefulAppState` menyimpan data `counter`.
* **setState()**: Memperbarui nilai `counter` dan merender ulang UI.

<figure><img src="../../.gitbook/assets/Screenshot 2024-12-04 at 13.56.53.png" alt=""><figcaption></figcaption></figure>

