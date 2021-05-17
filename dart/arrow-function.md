# Arrow Function

Seperti halnya javascript, Dart juga mendukung arrow function. Arrow function merupakan salah satu cara penulisan function yang lebih ringkas dengan tanda =&gt;. Arrow function dapat digunakan pada function yang mengembalikan 1 nilai.

perhatikan `function hallo()` dan `getUmur()`

```text
void main() {
  print ('ini fungsi utama');
  String hai = hallo();
  int umur = getUmur();
  print (hai);
  print (umur);
}

String hallo(){
  return 'hallo cuy';
}

int getUmur(){
  return 30;
}
```

karena mengembalikan 1 nilai maka fungsi `hallo()` dan `getUmur()`  diatas dapat ditulis menggunakan arrow function menjadi

```text
void main() {
  print ('ini fungsi utama');
  String hai = hallo();
  int umur = getUmur();
  print (hai);
  print (umur);
}

String hallo() => 'hallo cuy';

int getUmur() => 30;
```

