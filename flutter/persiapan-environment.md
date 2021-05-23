# Persiapan Environment

{% hint style="info" %}
Tutorial instalasi flutter ini dilakukan pada sistem operasi Windows, jika kalian menggunakan sistem operasi yang berbeda silakan ikuti langkah di [https://flutter.dev/docs/get-started/install](https://flutter.dev/docs/get-started/install)
{% endhint %}

Ada beberapa langkah yang perlu dilakukan untuk menginstall dan menjalankan flutter pada sistem operasi windows.

1. Install Git for Windows dari halaman [https://git-scm.com/download/win](https://git-scm.com/download/win)
2. Download Flutter SDK dari halaman [https://flutter.dev/docs/development/tools/sdk/releases](https://flutter.dev/docs/development/tools/sdk/releases). Pada saat modul ini ditulis SDK terbaru adalah versi 2.2.0
3. Extract hasil download ke dalam folder `C:\src\flutter`
4. Klik Start menu kemudian ketik `env` dan tekan enter

![](../.gitbook/assets/image%20%2812%29.png)

5. Pada tab Advanced klik tombol **Environment Variables**

![](../.gitbook/assets/image%20%2831%29.png)

6. Klik pada **Path** kemudian klik **New**

![](../.gitbook/assets/image%20%285%29.png)

7. Klik **New** pada bagian kanan atas, kemudian isikan lokasi path folder bin hasil extract flutter kita tadi. Pada tutorial ini maka lokasi pathnya adalah `C:/src/flutter/bin`

![](../.gitbook/assets/image%20%2817%29.png)

8. Klik OK 3x hingga semua dialog box tertutup. Untuk mengetes apakah instalasi sudah sesuai maka buka command prompt \(Tekan Win+R, kemudian tulis cmd\). Ketikkan perintah `flutter doctor` pada cmd. Jika muncul versi flutter maka instalasi sudah benar

![](../.gitbook/assets/image%20%2814%29.png)

Jika muncul error seperti gambar dibawah ini, maka tidak usah khawatir. Kita lanjutkan dengan menginstall Android Studio

```text
 ✗ Android SDK is missing command line tools; download from https://goo.gl/XxQghQ
    • Try re-installing or updating your Android SDK,
      visit https://flutter.dev/setup/#android-setup for detailed instructions.
```

9. Download dan Install Android Studio dari halaman [https://developer.android.com/studio](https://developer.android.com/studio). Selain berfungsi sebagai IDE yang dapat kita gunakan untuk koding, Android Studio diperlukan untuk menginstall Android SDK yang diperlukan flutter untuk membangun aplikasi android.

10. Langkah berikutnya setelah Android Studio terinstall adalah menginstall Android Emulator. Kita dapat menggunakan emulator bawaan Android Studio dengan mengikuti cara instalasi dari halaman [https://developer.android.com/studio/run/managing-avds?hl=id](https://developer.android.com/studio/run/managing-avds?hl=id). Bisa juga menggunakan emulator lain seperti Bluestack, GenyMotion atau yang lain, bahkan device android asli juga bisa kita gunakan.

> Note : Jika menggunakan emulator android atau device android asli pastikan sudah mengaktifkan **Developer Options** dan **USB Debugging** agar dikenali oleh IDE/Text Editor

11. Agar Android Studio dapat digunakan untuk membuat project flutter, maka kita perlu menginstall plugin flutter tersebut. Pada welcome screen Android Studio klik **Configure** kemudian pilih **Plugins**

![](../.gitbook/assets/image%20%2818%29.png)

11. Cari plugin bernama Flutter kemudian Install. Jika sudah berhasil maka pada welcome screen akan muncul pilihan **Start a new Flutter Project**

![](../.gitbook/assets/image%20%2820%29.png)

12. Jika Android Studio terlalu berat untuk dijalankan di perangkat kalian maka kita bisa menggunakan Text Editor yang lebih ringan seperti Visual Studio Code. Silakan install dari halaman [https://code.visualstudio.com/](https://code.visualstudio.com/). Jika sudah terinstall maka pilih menu **Extensions** dari sidebar sebelah kiri 

![Cari menu extensions dengan logo seperti ini](../.gitbook/assets/image%20%2813%29.png)

13. Cari dan install extension bernama Flutter

![](../.gitbook/assets/image%20%2834%29.png)

14. Untuk tutorial selanjutnya, penulis akan menggunakan Visual Studio Code dengan pertimbangan lebih ringan daripada Android Studio.

