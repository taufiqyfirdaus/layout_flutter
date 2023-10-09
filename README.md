# Praktikum 1
**Langkah 2**<br><br>
Buka file main.dart lalu ganti dengan kode seperti dibawah.
```
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout: Taufiqy Firdaus Jatu - 2141720124',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
```

![image](https://github.com/taufiqyfirdaus/layout_flutter/assets/74848393/296328cd-b8f7-4e7f-aeac-26c93bfc0216)<br><br>

**Langkah 4**<br><br>
Menambahkan kode berikut di bagian atas metode build() di dalam kelas MyApp.
```
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  Widget titleSection = Container(
    padding: EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          /* soal 1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* soal 2*/
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Wisata Cafe di Batu',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                'Batu, Malang, Indonesia',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        /* soal 3*/
        const Icon(Icons.star, color: Colors.red),
        const Text('41'),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout: Taufiqy Firdaus Jatu - 2141720124',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            titleSection,
          ],
        ),
      ),
    );
  }
}
```
![image](https://github.com/taufiqyfirdaus/layout_flutter/assets/74848393/9d40daa4-4dba-430f-a7b5-56890729a37d)<br><br>

# Praktikum 2
**Langkah 1**<br><br>
Menambahkan method _buildButtonColumn ke dalam method build().
```
Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }
  }
```
**Langkah 2**<br><br>
Menambahkan Widget buttonSection untuk memasukkan ikon langsung ke dalam kolom.
```
Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildButtonColumn(
            const Color.fromRGBO(33, 150, 243, 1), Icons.call, 'CALL'),
        _buildButtonColumn(Colors.blue, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(Colors.blue, Icons.share, 'SHARE'),
      ],
    );
```
**Langkah 3**<br><br>
Menambahkan button section pada body.
```
body: Column(
          children: [
            titleSection,
            buttonSection,
          ],
        ),
```
![image](https://github.com/taufiqyfirdaus/layout_flutter/assets/74848393/3e779ad3-8dee-44ba-bccf-ffc6198312a7)<br><br>


# Praktikum 3
**Langkah 1**<br><br>
Tentukan bagian teks sebagai variabel. Masukkan teks ke dalam Container dan tambahkan padding di sepanjang setiap tepinya. Tambahkan kode berikut tepat di bawah deklarasi buttonSection.
```
Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Ditulis oleh Taufiqy Firdaus Jatu - 2141720124. Anda bisa mengunjungi Gua Pinus Gunung Banyak. Lokasi dari tempat wisata alam yang satu ini berada di daerah Gunung Sari, Bumiaji, Kota Batu, Jawa Timur. Pengunjung bisa menikmati indahnya hutan pinus dan berburu foto di beberapa tempat yang telah disediakan. Pengunjung juga bisa menikmati indahnya pemandangan dari ketinggian di Gua Pinus Gunung Banyak. Suasana yang sejuk dan dingin atau kota Batu juga bisa Anda rasakan di tempat wisata alam yang satu ini. Salah satu tempat wisata alam yang sayang untuk dilewatkan saat Anda berada di Kota Batu.',
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );
```
**Langkah 2**<br><br>
Tambahkan widget variabel textSection ke dalam body seperti berikut.
```
body: Column(
          children: [
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
```
![image](https://github.com/taufiqyfirdaus/layout_flutter/assets/74848393/66ac7754-639b-4650-bb58-67f718bd591c)<br><br>

# Praktikum 4
**Langkah 1**<br><br>
Buatlah folder images di root project layout_flutter. Masukkan file gambar tersebut ke folder images, lalu set nama file tersebut ke file pubspec.yaml.
```
flutter:
  assets:
  - assets/goapinus.jpg
```
**Langkah 2**<br><br>
Menambahkan aset gambar ke dalam body.
```
Image.asset('assets/goapinus.jpg'),
```
**Langkah 3**<br><br>
Mengubah menjadi ListView.
```
body: ListView(
          children: [
            Image.asset('assets/goapinus.jpg'),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
```
![image](https://github.com/taufiqyfirdaus/layout_flutter/assets/74848393/9607adfc-5af8-437c-a0a0-bb03adf82487)<br><br>
