# Control Flow

Sama seperti bahasa pemrograman yang lain, Dart juga mengenal percabangan dan perulangan

**If dan Else**

```text
void main (){

  String score = calculateScore(90);
  print (score);
} 

String calculateScore(num score) {
  if (score > 90) {
    return 'A';
  } else if (score > 80) {
    return 'B';
  } else if (score > 70) {
    return 'C';
  } else if (score > 60) {
    return 'D';
  } else {
    return 'E';
  }
}
```

**Conditional Expressions**

Fitur ini memungkinkan kita untuk menulis if else dalam 1 baris dengan format

```text
// condition ? true expression : false expression
```

contoh

```text
var shopStatus = now > openHours ? "Hello, we're open" : "Sorry, we've closed";
```

**Perulangan For**

```text
void main (){

for (int i = 1; i <= 10; i++) {
  print(i);
}
  
} 
```

**Perulangan dengan while**

```text
void main (){
var i = 1;
 
while (i <= 10) {
  print(i);
  i++;
}
  
}
```

