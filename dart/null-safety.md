# Null Safety

Null safety pada Dart adalah fitur yang memastikan bahwa sebuah variabel tidak memiliki nilai null atau tidak dideklarasikan secara eksplisit sebagai nullable, kecuali jika secara eksplisit dideklarasikan menggunakan tanda tanya (?) setelah tipe datanya. Dengan kata lain, null safety memungkinkan kita untuk mencegah kesalahan yang terkait dengan nilai null pada waktu kompilasi, sehingga meningkatkan keamanan dan stabilitas program.

Berikut adalah contoh kode program Dart yang menggunakan null safety:

```
void main() {
  String? name; // variabel name dideklarasikan sebagai nullable
  name = 'John Doe'; // variabel name diinisialisasi dengan string 'John Doe'
  
  // pengecekan jika variabel name bukan null, maka tampilkan teks 'Hello, name!'
  if (name != null) {
    print('Hello, $name!');
  }
}

```

Pada contoh kode program di atas, variabel `name` dideklarasikan sebagai nullable menggunakan tanda tanya (?) setelah tipe data `String`. Ini berarti variabel `name` dapat memiliki nilai string atau nilai null. Selanjutnya, variabel `name` diinisialisasi dengan string 'John Doe'. Kemudian, dilakukan pengecekan apakah variabel `name` tidak bernilai null, dan jika benar, program akan menampilkan teks 'Hello, name!' diikuti dengan nilai variabel `name`.

Dalam kasus ini, null safety memastikan bahwa variabel `name` tidak bernilai null saat digunakan dalam blok kode if, sehingga program tidak akan menghasilkan kesalahan pada waktu kompilasi.

