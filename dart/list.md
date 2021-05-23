# List

List merupakan tipe data seperti Array pada Javascript

**Deklarasi List**

```text
void main(){
  List nama = ['arif','setiawan','dani','dono'];
  print (nama);   
}
```

**Menambah item pada list**

```text
void main(){
  List nama = ['arif','setiawan','dani','dono'];
  print (nama);
    
  nama.add('sardi');
  print (nama);
}
```

![](../.gitbook/assets/image%20%2829%29.png)

**Menghapus item pada list**

```text
void main(){
  List nama = ['arif','setiawan','dani','dono'];
  print (nama);
    
  nama.add('sardi');
  print (nama);
  
  nama.remove('arif');
  print (nama);
}
```

![](../.gitbook/assets/image%20%2821%29.png)

Pada contoh diatas kita sudah mempraktekan cara membuat list. Namun kita belum mendeklarasikan tipe data apa dari list tersebut, sehingga kita dapat menambahkan tipe data yang berbeda. Contoh dapat dilihat pada baris 6 kode berikut, kita dapat menambahkan item bertipe int.

```text
void main(){
  List nama = ['arif','setiawan','dani','dono'];
  print (nama);
    
  nama.add('sardi');
  nama.add(10);
  print (nama);
  
}
```

![](../.gitbook/assets/image%20%286%29.png)

Hal seperti ini harus dihindari karena membuat list yang kita buat menjadi tidak konsisten, sehingga saat mendeklarasikan list kita juga perlu menset tipe data pada list tersebut. Perhatikan deklarasi list String pada baris ke 2

```text
void main(){
  List<String> nama = ['arif','setiawan','dani','dono'];
  print (nama);
    
  nama.add('sardi');
  print (nama);
  
}
```

Pada baris kedua, saat dilakukan deklarasi List maka kita langsung menset tipe data list tersebut yaitu string dengan menggunakan syntax `List<String>`. Sehingga jika ada yang menambahkan data selain String maka program akan error





