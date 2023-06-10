import 'package:flutter/material.dart';
import 'halaman1.dart';
import 'path_of_dreamers.dart';

void main() {
  runApp(new MaterialApp(
    title: "Path of Dreamers",
    home: new EndingTiga(),
    debugShowCheckedModeBanner: false,
  ));
}

class EndingTiga extends StatefulWidget {
  const EndingTiga({Key? key}) : super(key: key);

  @override
  _EndingTiga createState() => _EndingTiga();
}

class _EndingTiga extends State<EndingTiga> {
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
                "Ending 3: Diriku Yang Lebih Baik",
                style: new TextStyle(
                    fontSize: 25.0, color: Colors.black, height: 1.2),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 30.0),
              child: new Text(
                "Kau memutuskan untuk pulang dikarenakan kau sudah mencapai tujuanmu, yaitu untuk menyembuhkan penyakitmu. Tentunya mata air tersebut kau bawa dalam jumlah yang cukup untuk diteliti lebih lanjut. Pada saat diteliti, air tersebut memiliki efek penyembuhan yang baik. Berita mengenai air ajaib ini menyebar ke seluruh penjuru dunia dan banyak pihak yang ingin mengambilnya secara langsung. Pada saat orang-orang yang pergi ke lokasi mata air, mata air tersebut hilang tanpa jejak secara misterius. Desa yang ditinggali oleh suku tersebut juga menghilang tanpa jejak. \n\nKau pun dapat hidup dengan keadaan sehat hingga umur yang sangat tua dan kehidupanmu juga semakin sukses. Kau memiliki lebih banyak perusahaan dan harta kekayaanmu juga semakin melimpah. Setelah perjalananmu ke mata air, kau belajar bahwa dirimu tidak boleh rakus. Oleh karena itu, sebagian kekayaanmu kau donasikan ke orang-orang yang lebih membutuhkan. Kau pun meninggal mengetahui bahwa mata air tersebut telah menyelamatkan hidupmu.",
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
