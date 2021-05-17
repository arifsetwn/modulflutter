# Function

Penulisan function pada dart tidak terlalu jauh berbeda dengan penulisan function pada bahasa pemrograman yang lain. Setiap kode dart harus terdiri dari satu fungsi `main` yang akan dieksekusi setiap tombol run dijalankan

```text
void main() {
  //kode disini akan dijalankan
}
```

Berikut ini contoh implementasi function pada dart

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

pada kode diatas kita memiliki 3 function yaitu `main`, `hallo` dan `getUmur`. Penjelasan dari kode diatas

* baris ke 2 akan mencetak kata _'ini fungsi utama'_
* baris ke 3 akan memanggil fungsi `hallo()`. Fungsi `hallo()` akan mengembalikan kata '_hallo cuy'_ dan disimpan ke dalam variabel `hai`
* baris ke 4 akan memanggil fungsi `getUmur()`. Fungsi `getUmur()` akan mengembalikan nilai 30 dan akan disimpan di variabel `umur`.
* baris ke 5 dan 6 akan menampilkan variabel `hai` dan `umur`

Jika kode tersebut dijalankan akan tampil seperti berikut

![](../.gitbook/assets/image%20%282%29.png)

