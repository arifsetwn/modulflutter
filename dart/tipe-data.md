# Tipe Data

Dart merupakan statically typed programming dimana jika kita sudah membuat sebuah variabel maka kita tidak dapat mengubah tipe dari variabel tersebut. Misal kita membuat variabel bernama `kata` dengan tipe `string,` maka kita tidak dapat mengisi variabel tersebut dengan value 30 atau 20,1.

Beberapa tipe data dasar pada dart yaitu `integer,` `String` dan `boolean`

**Integer**

```text
void main() {
  int umur = 30;
  print (umur);  
  }
```

**String**

```text
void main() {
  String nama = 'Arif';
  print (nama);  
  }
```

**Boolean**

```text
void main() {
  bool isMalam = true;
  print (isMalam);  
  }
```



Dart juga mendukung tipe data `dynamic`, dengan tipe data ini kita dapat mengubah suatu nilai dari variabel. Namun, tipe data ini tidak disarankan untuk digunakan karena tidak sesuai dengan prinsip statically typed programming

```text
void main() {
  dynamic nama = 'Arif';
  print (nama);
  nama = 30;
  print (nama); 
  }
```

Pada baris 2 kita deklarasi variabel nama dengan tipe data `dynamic`. Variabel tersebut berisi `String '`Arif'. Kemudian pada baris ke-4 isi variabel nama diubah menjadi `int` dengan nilai 30. Jika kita jalankan maka tidak akan terdapat error 

