# Hot Reload

Fitur Hot Reload merupakan fitur terbaik yang ditawarkan oleh flutter. Kita dapat langsung memodifikasi kode dan secara instan akan berubah pada emulator tanpa harus melakukan start dan stop emulator. 

1. Hapus semua kode pada main.dart kemudian tulis kode berikut ini

```text
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home : Scaffold(
        appBar : AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}

```

tekan Ctrl + S untuk save kemudian lihat pada emulator yang berjalan, secara instan tampilan aplikasi akan berubah menjadi seperti ini 

![Hello World](../.gitbook/assets/image%20%2811%29.png)



