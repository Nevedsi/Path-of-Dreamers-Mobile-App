import 'package:flutter/material.dart';
import 'halaman1.dart';
import 'path_of_dreamers.dart' as home;

void main() {
  runApp(new MaterialApp(
    title: "Path of Dreamers",
    home: new HalInfo1(),
    debugShowCheckedModeBanner: false,
  ));
}

class HalInfo1 extends StatefulWidget {
  const HalInfo1({Key? key}) : super(key: key);

  @override
  _HalInfo1 createState() => _HalInfo1();
}

class _HalInfo1 extends State<HalInfo1> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      fixedSize: const Size(100, 30),
      primary: Colors.black,
    );
    return Scaffold(
      backgroundColor: Colors.white,
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
              margin: EdgeInsets.fromLTRB(100.0, 10.0, 100.0, 20.0),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromARGB(255, 104, 104, 104), width: 20),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: AspectRatio(
                aspectRatio: 9 / 16,
                child: Image.network(
                  'https://i.pinimg.com/originals/df/0a/3e/df0a3e2ec30abb1c92d145ef165b714f.gif',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            new Text(
              "Gunung Abadi",
              textAlign: TextAlign.center,
              style: new TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            new Text(
              "Genre  :",
              textAlign: TextAlign.center,
              style: new TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            new Text(
              "Misteri",
              textAlign: TextAlign.center,
              style: new TextStyle(fontSize: 20.0, color: Colors.black),
            ),
            SizedBox(height: 20),
            new Text(
              "Penulis  :",
              textAlign: TextAlign.center,
              style: new TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            new Text(
              "Arya \nAbyan",
              textAlign: TextAlign.center,
              style: new TextStyle(fontSize: 20.0, color: Colors.black),
            ),
            SizedBox(height: 20),
            new Text(
              "Sinopsis :",
              textAlign: TextAlign.center,
              style: new TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 30.0),
              child: new Text(
                "Kau adalah pengusaha kaya raya yang mengidap penyakit berat dan harapan terakhirmu adalah mata air misterius di dalam Gunung Kirinari. Apakah kau dapat menyembuhkan penyakitmu?",
                style: new TextStyle(
                    fontSize: 14.0, color: Colors.black, height: 1.2),
              ),
            ),
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
              child: const Text('Baca'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: style,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => home.Home()),
                );
              },
              child: const Text('Kembali'),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
