# Layout



### **Layout dalam Flutter**

#### **1. Pengertian Layout**

Layout dalam Flutter adalah cara mengatur dan mengelola elemen-elemen di layar. Flutter menyediakan berbagai widget layout untuk menampilkan elemen secara vertikal, horizontal, grid, atau kombinasi lainnya.

#### **2. Konsep Layout di Flutter**

Flutter menggunakan sistem widget hirarkis untuk membangun layout. Setiap widget dapat bertindak sebagai:

* **Parent**: Mengelola tata letak widget di dalamnya.
* **Child/Children**: Elemen-elemen yang dikelola oleh parent.

#### **3. Tipe Widget Layout**

* **Single Child Layout Widgets**:
  * Mengelola satu widget anak, misalnya `Container`, `Center`, `Align`.
* **Multi Child Layout Widgets**:
  * Mengelola beberapa widget anak, misalnya `Row`, `Column`, `Stack`.

***

### **Widget Layout**

#### **1. Widget Row dan Column**

* **Row**: Menampilkan widget secara horizontal.
* **Column**: Menampilkan widget secara vertikal.

**Properti Penting**

* `mainAxisAlignment`: Mengatur posisi widget di sepanjang sumbu utama.
* `crossAxisAlignment`: Mengatur posisi widget di sepanjang sumbu silang.
* `children`: Daftar widget yang akan ditampilkan.

**Contoh Kode**

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
        appBar: AppBar(title: Text('Row & Column Example')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Column Item 1'),
            Text('Column Item 2'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Row Item 1'),
                Text('Row Item 2'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


```

<figure><img src="../../.gitbook/assets/Screenshot 2024-12-04 at 13.52.28.png" alt=""><figcaption></figcaption></figure>



#### **2. Widget Stack**

* **Stack**: Menumpuk widget secara bertingkat.
* **Posisi Elemen**: Menggunakan `Positioned` untuk mengatur posisi elemen di dalam Stack.

**Contoh Kode**

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
        appBar: AppBar(title: Text('Stack Example')),
        body: Stack(
          children: [
            Container(
              color: Colors.blue,
              height: 300,
              width: 300,
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

<figure><img src="../../.gitbook/assets/Screenshot 2024-12-04 at 13.53.05.png" alt=""><figcaption></figcaption></figure>



#### **3. Widget GridView**

* **GridView**: Menampilkan widget dalam bentuk grid.
* **Tipe GridView**:
  * `GridView.count`: Grid dengan jumlah kolom tetap.
  * `GridView.builder`: Grid dengan item dinamis.

**Contoh Kode**

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
        appBar: AppBar(title: Text('GridView Example')),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(6, (index) {
            return Container(
              margin: EdgeInsets.all(8),
              color: Colors.blueAccent,
              child: Center(
                child: Text(
                  'Item $index',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

```

<figure><img src="../../.gitbook/assets/Screenshot 2024-12-04 at 13.53.52.png" alt=""><figcaption></figcaption></figure>



### **Kombinasi Layout**

#### **1. Membuat Layout Kompleks**

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
        appBar: AppBar(title: Text('Complex Layout')),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu, size: 40),
                Text('Dashboard', style: TextStyle(fontSize: 24)),
                Icon(Icons.settings, size: 40),
              ],
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.blueAccent,
                    child: Center(
                      child: Text(
                        'Grid Item $index',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 50,
              color: Colors.grey[300],
              child: Center(child: Text('Footer Section')),
            ),
          ],
        ),
      ),
    );
  }
}
```

**Penjelasan**

* Menggabungkan **Row**, **Column**, dan **GridView**.
* Area atas adalah header, area tengah grid, dan area bawah footer.

<figure><img src="../../.gitbook/assets/Screenshot 2024-12-04 at 13.54.52.png" alt=""><figcaption></figcaption></figure>



***
