# Konsep Widget dan Layout

{% hint style="info" %}
Materi yang akan dipelajari :&#x20;

* Penggunaan widget untuk membuat layout dan kontrol
* Membuat widget interaktif
* Memahami stateful widget
{% endhint %}

Pada akhir kegiatan ini kita akan membuat aplikasi resep masakan seperti berikut :

![](<../../.gitbook/assets/image (41) (1).png>)

### Membuat Project Baru

Buka terminal menggunakan vscode kemudian ketik kode berikut

```sql
flutter create recipes
```

Kode tersebut akan membuat project flutter baru dengan nama folder recipes



### Mengganti Nama App

Secara default flutter akan membuat nama aplikasi dengan nama `MyApp`, seperti yang terlihat pada kode di file lib/main.dart

```dart
class MyApp extends StatelessWidget {
```

Karena kita akan membuat aplikasi resep masakan, maka ganti semua kata `MyApp` menjadi `RecipeApp` pada file main.dart\


### Mengganti Style AppBar

masih pada file main.dart ubah kode `Widget build` menjadi seperti berikut

```dart
 // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Recipe Calculator',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.black,
        ),
      ),
      home: const MyHomePage(title: 'Recipe Calculator'),
    );
  }
}
```

Hasil dari kode di atas adalah sebagai berikut&#x20;

![](<../../.gitbook/assets/image (42) (1).png>)

### Menyiapkan konten Aplikasi

Ubah class  \_MyHomePageState menjadi seperti berikut

```dart
class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea( 
      //TO DO : Replace child: Container
        child: Container(),
      ), 
    );
  }
  // TODO: Add buildRecipeCard() heredart
}
```

Jika dijalankan maka tampilan aplikasi akan menjadi blank



### Menyiapkan Data Model

Buat file baru dengan nama recipe.dart pada folder lib, kemudian tulis kode berikut

```dart
class Recipe {
  String label;
  String imageUrl;
   // TODO: Add servings and ingredients here

   
  Recipe(
    this.label,
    this.imageUrl,
  );

  static List<Recipe> samples = [
  Recipe(
    'Spaghetti and Meatballs',
    '2126711929_ef763de2b3_w.jpg',
  ),
  Recipe(
    'Tomato Soup',
    '27729023535_a57606c1be.jpg',
  ),
  Recipe(
    'Grilled Cheese',
    'assets/3187380632_5056654a19_b.jpg',
  ),
  Recipe(
    'Chocolate Chip Cookies',
    '15992102771_b92f4cc00a_b.jpg',
  ),
  Recipe(
    'Taco Salad',
    '8533381643_a31a99e8a6_c.jpg',
  ),
  Recipe(
    'Hawaiian Pizza',
    '15452035777_294cefced5_c.jpg',
  ),
];

}
// TODO: Add Ingredient() here

```



Download folder asset dari link berikut&#x20;

[https://github.com/raywenderlich/flta-materials/tree/editions/2.0/02-hello-flutter/assets](https://github.com/raywenderlich/flta-materials/tree/editions/2.0/02-hello-flutter/assets)

kemudian pindahkan ke dalam folder projek kita, sehingga susunan folder menjadi seperti berikut

![](<../../.gitbook/assets/image (42).png>)

Agar asset tersebut dapat dikenali oleh flutter maka kita perlu melakukan editing pada file pubspec.yaml. buka file tersebut kemudian hilangkan tanda pagar yang ada pada kata assets dan tambahkan nama folder asset.

![](<../../.gitbook/assets/image (39).png>)

```yaml
assets:
  - assets/
```

\


### Menampilkan List

buka kembali file main.dart kemudian tambahkan import pada bagian atas kode



```dart
import 'recipe.dart';
```

\
Kemudian modifikasi class \_MyHomePageState menjadi seperti berikut

```dart
class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Container(
          child: ListView.builder(
            itemCount: Recipe.samples.length,
            itemBuilder: (BuildContext context, int index){
            // TODO: Update to return Recipe card
              return Text(Recipe.samples[index].label);
            },
            ),
        ),
      ), 
    );
  }
}
```

tampilan aplikasi akan menjadi seperti berikut

![](<../../.gitbook/assets/image (41).png>)

### Menambahkan Gambar

Pada class `_MyHomePageState` cari kata  `// TODO: Add buildRecipeCard() here` kemudian ganti dengan kode berikut

```dart
  Widget buildRecipeCard(Recipe recipe) {
    return Card(
      elevation: 2.0,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(recipe.imageUrl)),
            const SizedBox(
              height: 14.0,
            ),
            Text(
              recipe.label,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino'
              ),
            ),
          ],
        ),
      ),
    );
  }
```

kemudian ganti baris `return Text(Recipe.samples[index].label);` dengan kode berikut&#x20;

```dart
// TODO: Add GestureDetector
return buildRecipeCard(Recipe.samples[index]);
```

### &#x20;Membuat aplikasi menerima input

ganti baris `return buildRecipeCard(Recipe.samples[index]);` dengan kode berikut

```dart
           return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        // TODO : Recipe Detail()
                        return Text('Detail page');
                      },
                    ),
                  );
                },
                child: buildRecipeCard(Recipe.samples[index]),
              );
```

Jika dijalankan dan kita memilih gambar makanan maka halaman akan berpindah ke halaman detail page. Tidak perlu khawatir jika tampilan masih hitam. Pada langkah berikutnya kita akan membuat halaman detail resep

Buat file baru dengan nama recipe\_detail.dart pada folder lib kemudian tulis kode berikut

```dart
import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  _RecipeDetailState createState() {
    return _RecipeDetailState();
  }
}

class _RecipeDetailState extends State<RecipeDetail> {

  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      // 2
      body: SadarfeArea(
        // 3
        child: Column(
          children: <Widget>[
            // 4
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.recipe.imageUrl),
              ),
            ),
            // 5
            const SizedBox(
              height: 4,
            ),
            // 6
            Text(
              widget.recipe.label,
              style: const TextStyle(fontSize: 18),
            ),
            // TODO: Add Expanded

          
          ],
        ),
      ),
    );
  }
}
```

Agar file tersebut dikenali oleh flutter, maka tambahkan import baru pada file main.dart

```dart
import 'recipe_detail.dart';
```

ganti juga kode  `return Text('Detail page');` dengan kode berikut

```dart
return RecipeDetail(recipe: Recipe.samples[index]);
```

\
jalankan aplikasi maka halaman hitam tadi akan berubah menjadi seperti berikut

![](<../../.gitbook/assets/image (40).png>)

### Menambahkan detail resep

Buka file recipe.dart kemudian ubah menjadi kode berikut

```dart
class Recipe {
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingredients;

  Recipe(
    this.label,
    this.imageUrl,
    this.servings,
    this.ingredients,
  );

static List<Recipe> samples = [
  Recipe(
    'Spaghetti and Meatballs',
    '2126711929_ef763de2b3_w.jpg',
    4,
    [
      Ingredient(1, 'box', 'Spaghetti',),
      Ingredient(4, '', 'Frozen Meatballs',),
      Ingredient(0.5, 'jar', 'sauce',),
    ],
  ),
  Recipe(
    'Tomato Soup',
    '27729023535_a57606c1be.jpg',
    2,
    [
      Ingredient(1, 'can', 'Tomato Soup',),
    ],
  ),
  Recipe(
    'Grilled Cheese',
    '3187380632_5056654a19_b.jpg',
    1,
    [
      Ingredient(2, 'slices', 'Cheese',),
      Ingredient(2, 'slices', 'Bread',),
    ],
  ),
  Recipe(
    'Chocolate Chip Cookies',
    '15992102771_b92f4cc00a_b.jpg',
    24,
    [
      Ingredient(4, 'cups', 'flour',),
      Ingredient(2, 'cups', 'sugar',),
      Ingredient(0.5, 'cups', 'chocolate chips',),
    ],
  ),
  Recipe(
    'Taco Salad',
    '8533381643_a31a99e8a6_c.jpg',
    1,
    [
      Ingredient(4, 'oz', 'nachos',),
      Ingredient(3, 'oz', 'taco meat',),
      Ingredient(0.5, 'cup', 'cheese',),
      Ingredient(0.25, 'cup', 'chopped tomatoes',),
    ],
  ),
  Recipe(
    'Hawaiian Pizza',
    '15452035777_294cefced5_c.jpg',
    4,
    [
      Ingredient(1, 'item', 'pizza',),
      Ingredient(1, 'cup', 'pineapple',),
      Ingredient(8, 'oz', 'ham',),
    ],
  ),
];


}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(
    this.quantity,
    this.measure,
    this.name,
  );
}


```

pada file recipe\_detail.dart cari baris dengan text `// TODO: Add Expanded` kemudian ganti dengan kode berikut

```dart
        Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(7.0),
                  itemCount: widget.recipe.ingredients.length,
                  itemBuilder: (BuildContext context, int index) {
                    final ingredient = widget.recipe.ingredients[index];
                    return Text(
                        '${ingredient.quantity} ${ingredient.measure} ${ingredient.name}');
                  },
                ),
              ),
```

Jalankan aplikasi untuk melihat hasil kerja kita kali ini





\
