import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Path of Dreamers",
    home: new Penerbitan(),
    debugShowCheckedModeBanner: false,
  ));
}

class Penerbitan extends StatefulWidget {
  const Penerbitan({Key? key}) : super(key: key);

  @override
  _Penerbitan createState() => _Penerbitan();
}

class _Penerbitan extends State<Penerbitan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3A3A3A),
      body: new Center(
        child: new ListView(
          children: <Widget>[
            new Padding(
              padding: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
            ),
            new Text(
              "Penerbitan Karya",
              textAlign: TextAlign.center,
              style: new TextStyle(fontSize: 30.0, color: Colors.white),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 30.0),
              child: Text(
                "Ingin Karya Tulis Anda Diterbitkan Di Aplikasi Ini? \nSilahkan Hubungi Kontak Dibawah Ini: \n\nEmail : upkaryatulis@pathofdreamers.com \n\nNo Telp : 62924855007 (WA Only) \n\nAlamat : JI Medan Merdeka Tmr 17, Jakarta \n\nJam Kerja : 9AM - 14PM ",
                style: new TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                    letterSpacing: 1.0,
                    fontFamily: "Sans Serif",
                    height: 1.2),
              ),
            ),
            new Padding(
              padding: new EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
