# Inheritence

Pewarisan \(Inheritence\) adalah kemampuan program untuk membuat kelas baru dari kelas yang sudah ada. Konsep pewarisan bisa dibayangkan sebagai anak yang mewarisi ciri-ciri dari orang tuanya. Dalam OOP, kelas yang diwariskan disebut kelas induk \(superclass\), dan kelas yang diwarisi dari kelas induknya disebut subkelas \(subclass\).

Untuk membuat class inheritence kita dapat menggunakan syntax extends dengan format

```text
class nama_class extends nama_class_induk
```

contoh jika kita membuat class superuser yang meng-extend class user dari kode modul sebelumnya

```text
class SuperUser extends User {
  
}
```

 kemudian kita harus membuat constructor yang berisi property apa aja yang diturunkan dari class User. Pada kasus ini adalah username dan age

```text
class SuperUser extends User {
  
  SuperUser (String username, int age) : super(username, age);
   
}
```

pada class SuperUser kita dapat menambahkan method logout sebagai contoh 

```text
class SuperUser extends User {
  
  SuperUser (String username, int age) : super(username, age);
  
  void logout(){
    print ('user logout');
  }
   
}
```

Sekarang kita dapat membuat objek baru dari class SuperUser ini, misalkan dengan nama userTiga

```text
SuperUser userTiga = SuperUser ('arman',19);
  print (userTiga.username);
  userTiga.login();
  userTiga.logout();
}
```

Perhatikan, di objek ini kita dapat menggunakan method login yang berasal dari class User \(class induk\) dan method logout yang berada di class SuperUser \(class subkelas\)

Kode keseluruhan menjadi seperti ini

```text
void main(){
  User userSatu = User('arif',25);
  print (userSatu.username);
  print (userSatu.age);
  userSatu.login();
  
  User userDua = User('aji',20);
  print (userDua.username);
  print (userDua.age);
  
  SuperUser userTiga = SuperUser ('arman',19);
  print (userTiga.username);
  userTiga.login();
  userTiga.logout();
}

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

class SuperUser extends User {
  
  SuperUser (String username, int age) : super(username, age);
  
  void logout(){
    print ('user logout');
  }
   
}
```

![](../.gitbook/assets/image%20%2816%29.png)

