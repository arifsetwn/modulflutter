# Class

`Class` merupakan fitur utama dari OOP yang digunakan sebagai blueprint untuk membuat suatu object. Kita sudah mempelajari `variabel` dan `function` pada modul sebelumnya. Pada `class`, `variabel` dikenal dengan nama `property.` Sedangkan `function` dikenal dengan nama `method.` 

Untuk membuat sebuah `class`, gunakan syntax `class` diikuti dengan nama `class` yang akan dibuat. Nama `class` harus diawali dengan huruf kapital. Contoh berikut ini jika ingin membuat `class` dengan nama User

```text
void main(){
  
}

class User {

}
```

Di dalam `class User` tersebut kita akan membuat 2 property yaitu `username` dan `age` serta 1 `method` dengan nama `login`. Sehingga kode kita menjadi seperti ini

```text
void main(){
  
}

class User {
  String username = 'mario';
  int age = 25;
  
  void login(){
    print('user login');
  }
}
```

Kemudian untuk membuat sebuah objek dari `class User` gunakan format berikut

```text
nama_class nama_objek = nama_class();
```

pembuatan objek tersebut harus berada di fungsi `main`

```text
void main(){
  User userSatu = User();
  
}

class User {
  String username = 'mario';
  int age = 25;
  
  void login(){
    print('user login');
  }
}
```

untuk mengakses `property` dari `class User`, kita bisa menggunakan nama `class` diikuti tanda . \(titik\) kemudian nama `property`.

```text
void main(){
  User userSatu = User();
  print (userSatu.username);
  print (userSatu.age);
  userSatu.login();
  
}

class User {
  String username = 'mario';
  int age = 25;
  
  void login(){
    print('user login');
  }
}
```

![](../.gitbook/assets/image%20%283%29.png)

Masalah akan timbul jika kita membuat user baru, misalkan dengan nama userDua dan kemudian mencetak `username` dari userDua tersebut karena akan memiliki nama yang sama.

```text
void main(){
  User userSatu = User();
  print (userSatu.username);
  print (userSatu.age);
  userSatu.login();
  
  User userDua = User();
  print (userDua.username);
  
}

class User {
  String username = 'mario';
  int age = 25;
  
  void login(){
    print('user login');
  }
}
```

![](../.gitbook/assets/image%20%288%29.png)

Untuk mengatasi masalah tersebut kita perlu memodifikasi `class User` dengan menghapus value dari `property username` dan `age` serta membuat sebuah constructor. Sebuah constructor merupakan fungsi spesial yang akan berjalan pertama kali ketika class dijalankan. Ingat, nama constructor harus sama dengan nama Class-nya.

```text
class User {
  String username;
  int age;
  
  User(String username, int age){
    this.username = username;
    this.age = age;
  }
  
  void login(){
    print('user login');
  }
}
```

Dengan begitu kita perlu memasukkan parameter `username` dan `age` setiap kali membuat objek. Sehingga kode pada `void main` menjadi seperti ini

```text
void main(){
  User userSatu = User('arif',25);
  print (userSatu.username);
  print (userSatu.age);
  userSatu.login();
  
  User userDua = User('aji',20);
  print (userDua.username);
  print (userDua.age);
}

class User {
  String username;
  int age;
  
  User(String username, int age){
    this.username = username;
    this.age = age;
  }
  
  void login(){
    print('user login');
  }
}
```

![](../.gitbook/assets/image%20%2830%29.png)

Jika kalian mencoba menjalankan kode diatas kemudian muncul error seperti ini

![](../.gitbook/assets/image%20%2825%29.png)

Error ini dikarenakan sejak versi 2.12, Dart menghadirkan fitur Null Safety. Nilai null pada suatu variabel bisa menyebabkan suatu program mengalami kesalahan yang dikenal dengan _Null Pointer Exception \(NPE\)_.

Untuk mengatasi error tersebut kita bisa menambahkan tanda tanya \(?\) pada inisiasi property `username` dan `age`

```text
class User {
  String? username;
  int? age;
  
  User(String username, int age){
    this.username = username;
    this.age = age;
  }
  
  void login(){
    print('user login');
  }
}
```



