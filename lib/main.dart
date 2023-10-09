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

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildButtonColumn(
            const Color.fromRGBO(33, 150, 243, 1), Icons.call, 'CALL'),
        _buildButtonColumn(Colors.blue, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(Colors.blue, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Ditulis oleh Taufiqy Firdaus Jatu - 2141720124. Anda bisa mengunjungi Gua Pinus Gunung Banyak. Lokasi dari tempat wisata alam yang satu ini berada di daerah Gunung Sari, Bumiaji, Kota Batu, Jawa Timur. Pengunjung bisa menikmati indahnya hutan pinus dan berburu foto di beberapa tempat yang telah disediakan. Pengunjung juga bisa menikmati indahnya pemandangan dari ketinggian di Gua Pinus Gunung Banyak. Suasana yang sejuk dan dingin atau kota Batu juga bisa Anda rasakan di tempat wisata alam yang satu ini. Salah satu tempat wisata alam yang sayang untuk dilewatkan saat Anda berada di Kota Batu.',
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Taufiqy Firdaus Jatu - 2141720124',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset('assets/goapinus.jpg'),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
