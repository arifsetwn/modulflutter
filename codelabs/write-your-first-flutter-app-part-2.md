# Write your first Flutter app, Part 2

Tutorial ini merupakan lanjutan dari part 1, sehingga kita akan menggunakan file project yang sama.

Pada tutorial ini kita akan membuat aplikasi seperti berikut

![](<../.gitbook/assets/image (43).png>)



Pada class \_RandomWordsState tambahkan kode final \_saved = \<WordPair>{};

```
class _RandomWordsState extends State<RandomWords> {
  final _suggestion = <WordPair>[];
  final _saved = <WordPair>{}; //Tambahkan baris ini
  final _biggerFont = const TextStyle(fontSize: 18);
```

Tambahkan juga variabel alreadySaved untuk mengecek apakah kata tersebut sudah dipilih atau belum



```
    final index = i ~/ 2;
    if (index >= _suggestion.length) {
      _suggestion.addAll(generateWordPairs().take(10));
    }

    final alreadySaved = _saved.contains(_suggestion[index]); //Tambahkan baris ini
```

Tambahkan trailing: icon pada ListTile

```
return ListTile(
          title: Text(
            _suggestion[index].asPascalCase,
            style: _biggerFont,
          ),
          trailing: Icon(
            alreadySaved ? Icons.favorite : Icons.favorite_border,
            color: alreadySaved ? Colors.red : null,
            semanticLabel: alreadySaved ? 'Remove from saved' : 'Saved',
          ),
```

Jika aplikasi dijalankan pada akan terdapat icon love pada sebelah kanan text

Agar icon tersebut dapat terpilih maka tambahkan onTap dibawah kode trailing: Icon diatas. sehingga keseluruhan kode ListTile seperti berikut

```
return ListTile(
          title: Text(
            _suggestion[index].asPascalCase,
            style: _biggerFont,
          ),
          trailing: Icon(
            alreadySaved ? Icons.favorite : Icons.favorite_border,
            color: alreadySaved ? Colors.red : null,
            semanticLabel: alreadySaved ? 'Remove from saved' : 'Saved',
          ),
          onTap: () {
            setState(() {
              if (alreadySaved) {
                _saved.remove(_suggestion[index]);
              } else {
                _saved.add(_suggestion[index]);
              }
            });
          },
        );
```

Hasil aplikasi akan seperti berikut

![](<../.gitbook/assets/image (40).png>)
