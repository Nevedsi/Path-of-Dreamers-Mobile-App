import 'package:flutter/material.dart';
import 'ending1.dart';
import 'ending2.dart';
import 'halaman2b.dart';

void main() => runApp(Hal2());

class Hal2 extends StatelessWidget {
  const Hal2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Karya 1',
      home: Hal2a(title: 'Judul 1'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Hal2a extends StatefulWidget {
  final String title;
  const Hal2a({Key? key, required this.title}) : super(key: key);

  @override
  _Hal2a createState() => _Hal2a();
}

class _Hal2a extends State<Hal2a> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 14, color: Colors.white),
      fixedSize: const Size(100, 50),
      primary: Colors.black,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3A3A3A),
        title: Text(
          'Gunung Abadi',
          style:
              new TextStyle(fontSize: 24.0, color: Colors.white, height: 1.2),
        ),
      ),
      body: new Center(
        child: new ListView(
          children: <Widget>[
            new Padding(
              padding: new EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 20.0),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 30.0),
              child: new Text(
                "Kau memutuskan untuk tidak bertemu dengan kepala suku dan melanjutkan perjalananmu ke mata air. Anggota tim tersebut pergi untuk menyampaikan pesan tersebut ke kepala suku. \n\nKau bersama dengan rombonganmu berjalan selama berjam-jam. Tubuhmu merasa sangat lelah dan sakit, tetapi kau tahu kalau kau harus terus berjalan. Hari kini sudah sore dan pada akhirnya kau beserta rombonganmu sampai di mata air. \n\nKau melihat beberapa anggota tim sedang meminum mata air. Beberapa di antaranya meminum dengan jumlah yang banyak. Tanpa menunggu lama, kau pun segera meminum mata air tersebut. Awalnya kau meminum sebanyak satu botol air dan seketika rasa sakit dan lelah yang telah kau derita menghilang dengan cepat. Yakin bahwa penyakitmu sudah sembuh, kau pun menangis, air mata bahagia mengalir dari matamu. Kini penyakitmu sudah sembuh, kau dapat pulang, tetapi di satu sisi kau ingin memiliki semua mata air ini agar kau dapat hidup dengan umur yang panjang. \n\nKau memutuskan untuk…",
                style: new TextStyle(
                    fontSize: 14.0, color: Colors.black, height: 1.2),
              ),
            ),
            SizedBox(height: 10),
            new Padding(
              padding: new EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
            ),
            ElevatedButton(
              style: style,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EndingSatu()),
                );
              },
              child: const Text('Pulang'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: style,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EndingDua()),
                );
              },
              child: const Text('Mengambil sebanyak-banyaknya'),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
