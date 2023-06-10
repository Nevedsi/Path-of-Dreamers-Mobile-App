import 'package:flutter/material.dart';
import 'halaman1.dart';
import 'path_of_dreamers.dart';

void main() {
  runApp(new MaterialApp(
    title: "Path of Dreamers",
    home: new EndingEmpat(),
    debugShowCheckedModeBanner: false,
  ));
}

class EndingEmpat extends StatefulWidget {
  const EndingEmpat({Key? key}) : super(key: key);

  @override
  _EndingEmpat createState() => _EndingEmpat();
}

class _EndingEmpat extends State<EndingEmpat> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20, color: Colors.white),
      fixedSize: const Size(100, 30),
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
                "Ending 4: Nasib Lebih Buruk Dari Kematian",
                style: new TextStyle(
                    fontSize: 25.0, color: Colors.black, height: 1.2),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 30.0),
              child: new Text(
                "Kau memutuskan untuk meminum mata air tersebut sebanyak-banyaknya hingga hampir muntah. Kau juga sebanyak-banyaknya membawa mata air tersebut untuk diteliti dan dikonsumsi sendiri. Setelah perjalanan tersebut, kau mengkonsumsi mata air tersebut setiap hari. Pada saat diteliti, air tersebut memiliki efek penyembuhan yang baik. Berita mengenai air ajaib ini menyebar ke seluruh penjuru dunia dan banyak pihak yang ingin mengambilnya secara langsung. Pada saat orang-orang yang pergi ke lokasi mata air, mata air tersebut hilang tanpa jejak secara misterius. Desa yang ditinggali oleh suku tersebut juga menghilang tanpa jejak. \n\nKau pun dapat hidup dengan keadaan sehat hingga umur yang sangat tua, tetapi keadaan kehidupanmu semakin lama semakin tidak sukses. Banyak perusahaanmu yang gulung tikar dan hutangmu yang semakin lama semakin banyak hingga setinggi gedung pencakar langit. Kau bahkan terpaksa harus tinggal di jalanan dan meminta uang untuk makan dari orang lain. Kau bahkan menyesal harus hidup dengan umur yang lama. Kau pun meninggal menyesal dikarenakan kerakusanmu telah mengutuk kehidupanmu.",
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
                  MaterialPageRoute(builder: (context) => HalamanSatu()),
                );
              },
              child: const Text('Kembali ke awal'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: style,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              child: const Text('Kembali ke halaman utama'),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
