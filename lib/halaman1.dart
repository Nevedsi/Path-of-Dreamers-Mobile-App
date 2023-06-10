import 'package:flutter/material.dart';
import 'halaman2B.dart';
import 'halaman2.dart';

void main() => runApp(HalamanSatu());

class HalamanSatu extends StatelessWidget {
  const HalamanSatu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Karya 1',
      home: Hal1(title: 'Judul 1'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Hal1 extends StatefulWidget {
  final String title;
  const Hal1({Key? key, required this.title}) : super(key: key);

  @override
  _Hal1 createState() => _Hal1();
}

class _Hal1 extends State<Hal1> {
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
              padding: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 30.0),
              child: new Text(
                "Gunung Kirinari. Konon menurut sebuah suku yang tinggal disebuah desa di kaki gunung, terdapat sebuah mitos mata air yang dapat menyembuhkan penyakit dan memperpanjang umur bagi siapa pun yang meminumnya yang terletak jauh di dalam gunung. \n\nDelapan bulan yang lalu, kau tidak sengaja menemukan mitos tersebut di sebuah website terpencil di internet. Kau adalah pengusaha kaya raya yang memiliki banyak perusahaan, tetapi seakan semuanya akan segera menghilang diambil darimu. Kesehatanmu semakin memburuk dikarenakan penyakit yang kau derita. Banyak rumah sakit terbaik di seluruh dunia yang sudah kau datangi untuk mencoba menyembuhkan penyakitmu, tetapi takdir seakan sudah menjanjikan dirimu untuk bertemu dengan kematian dalam waktu yang dekat. Merasa putus asa, kau memutuskan untuk mencari beberapa orang yang akan membantumu untuk pergi mencari mata air tersebut. Banyak orang tidak tertarik dikarenakan mencari sebuah mitos hanya membuang waktu saja. Tetapi setelah kau memberitahu bahwa siapa saja yang ikut akan kau berikan banyak harta dan uang, seakan orang-orang tersebut berputar 180 derajat dan banyak yang mau untuk ikut. Kau akhirnya memutuskan untuk menyewa 70 orang yang terbagi menjadi tujuh tim untuk mencari mata air tersebut. Tentunya semua biaya operasional didanai olehmu. \n\nSeminggu yang lalu, kau mendapatkan kabar bahwa salah satu tim telah menemukan mata airnya. Mata air tersebut dibuktikan dengan salah satu anggota yang digigit oleh ular sembuh dengan cepat. Merasa senang dan gembira, kau bersegera untuk pergi ke mata air tersebut, walaupun kondisimu sudah sangat parah. Setelah sekian lama, akhirnya kau bisa meminum air ini.\n\nDi pagi hari ini, kau dan rombonganmu sampai di kaki Gunung Kirinari dan bersiap-siap untuk pergi ke mata air. Pada saat baru saja ingin jalan, salah satu anggota dari tim yang telah menemukan mata air mendatangimu. Ia menjelaskan bahwa kepala suku ingin bertemu denganmu mengenai mata air. Di satu sisi kau merasa bahwa pertemuan dengan kepala suku ini dapat dilakukan nanti saja dikarenakan kau sudah tidak memiliki banyak waktu lagi. Di sisi lain, kau merasa harus bertemu dengan kepala suku ini. \n\nKau memutuskan untuk…",
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
                  MaterialPageRoute(builder: (context) => Hal2()),
                );
              },
              child: const Text('Tidak bertemu dengan kepala suku'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: style,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Hal3()),
                );
              },
              child: const Text('Bertemu dengan kepala suku'),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
