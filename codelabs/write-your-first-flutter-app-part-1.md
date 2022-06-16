# Write your first Flutter app, part 1

Pada kegiatan ini kita akan membuat aplikasi seperti berikut

![](<../.gitbook/assets/image (38).png>)



Buka VS Code, Buka Terminal dengan klik View - Terminal. Kemudian ketik kode berikut

```
flutter create startup_namer
cd startup_namer
```

Buka file main.dart yang ada pada folder lib. Hapus semua kode yang ada  dan replace dengan kode berikut&#x20;

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
```

Jalankan aplikasi maka kita akan melihat tampilan hello world

buka kembali terminal pada vscode kemudian ketik kode berikut (pastikan perintah dijalankan pada folder startup\_namer)

```
flutter pub add english_words
```

tambahkan kode import berikut pada bagian paling atas file main.dart

```
import 'package:english_words/english_words.dart';
```

ubah class MyApp pada Widget build menjadi seperti berikut, perhatikan baris 3 dan baris 11

```dart
 @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
```

Maka setiap kita menjalankan aplikasi akan tertampil sebuah kata bahasa inggris secara random



taruh cursor pada akhir baris file main.dart, ketik enter 2 kali untuk membuat baris baru. kemudian ketik kata stful kemudian enter untuk membuat class statefull widget. Tulis RandomWords sebagai nama class. maka kode kita akan menjadi seperti ini

```dart
class RandomWords extends StatefulWidget {
  const RandomWords({ Key? key }) : super(key: key);

  @override
  State<RandomWords> createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
```

pada class \_RandomWordsState ubah return Container() menjadi kode berikut

```dart
class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}
```



Buka kembali file main.dart.&#x20;

Hapus baris&#x20;

```
final wordPair = WordPair.random();
```

replace baris&#x20;

```
child: Text(wordPair.asPascalCase),
```

dengan&#x20;

```
child: RandomWords(), 
```

Sehingga class MyApp menjadi seperti berikut

```dart
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: const Center(
          child: RandomWords(),
        ),
      ),
    );
  }
}
```

Membuat Infinite Scrooling

ubah kode pada class \_RandomWordsState menjadi seperti berikut

```dart
class _RandomWordsState extends State<RandomWords> {
  final _suggestion = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18);

  @overriddarte
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return const Divider();

        final index = i ~/ 2;
        if (index >= _suggestion.length) {
          _suggestion.addAll(generateWordPairs().take(10));
        }
        return ListTile(
          title: Text(
            _suggestion[index].asPascalCase,
            style: _biggerFont,
          ),
        );
      },
    );
  }
}
```
