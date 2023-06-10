import 'package:flutter/material.dart';
import 'halaman1.dart';
import 'path_of_dreamers.dart';

void main() {
  runApp(new MaterialApp(
    title: "Path of Dreamers",
    home: new EndingSatu(),
    debugShowCheckedModeBanner: false,
  ));
}

class EndingSatu extends StatefulWidget {
  const EndingSatu({Key? key}) : super(key: key);

  @override
  _EndingSatu createState() => _EndingSatu();
}

class _EndingSatu extends State<EndingSatu> {
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
              margin: EdgeInsets.fromLTRB(30.0, 10.0, 50.0, 20.0),
              child: new Text(
                "Ending 1: Andaikan Aku Tahu",
                style: new TextStyle(
                    fontSize: 25.0, color: Colors.black, height: 1.2),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 30.0),
              child: new Text(
                "Kau memutuskan untuk pulang dikarenakan kau sudah mencapai tujuanmu, yaitu untuk menyembuhkan penyakitmu. Tentunya mata air tersebut kau bawa dalam jumlah yang cukup untuk diteliti lebih lanjut. Namun, pada saat diteliti, air tersebut hanyalah air biasa. Para peneliti mempunyai hipotesis bahwa efek umur panjang dan penyembuhan dapat berfnngsi jika dikonsumsi secara langsung di lokasi. Pada saat peneliti pergi ke lokasi, mata air tersebut hilang tanpa jejak secara misterius. Desa yang ditinggali oleh suku tersebut juga menghilang tanpa jejak. \n\nKau pun dapat hidup dengan keadaan sehat hingga umur yang cukup tua dan meninggal tanpa mengetahui bahwa mata air tersebut mengandung misteri yang lebih dalam.",
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
                  MaterialPageRoute(builder: (context) => const Home()),
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
