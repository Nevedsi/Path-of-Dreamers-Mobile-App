import 'package:flutter/material.dart';
import 'path_of_dreamers.dart';

void main() {
  runApp(new MaterialApp(
    title: "Path of Dreamers",
    home: new HalSelamatDatang(),
    theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF3A3A3A)),
    debugShowCheckedModeBanner: false,
  ));
}

class HalSelamatDatang extends StatefulWidget {
  const HalSelamatDatang({Key? key}) : super(key: key);

  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<HalSelamatDatang>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: const Color(0xFF3A3A3A),
        body: Container(
            child: new Center(
                child: new Column(children: <Widget>[
          new Image.asset("img/Logo.png",
              width: 350.0, alignment: Alignment.center),
          new Text(
            "Selamat Datang Di",
            style: new TextStyle(
                color: Colors.white,
                fontFamily: "Sans Serif",
                decoration: TextDecoration.none,
                fontSize: 30.0),
          ),
          SizedBox(height: 20),
          new Text(
            "Path of Dreamers",
            style: new TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontFamily: "Sans Serif",
                fontSize: 24.0),
          ),
          SizedBox(height: 50),
          Container(
            child: Center(
                child: ElevatedButton(
              child: const Text(
                'Lanjut',
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(150, 50),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                primary: Colors.blue,
              ),
            )),
          ),
        ]))));
  }
}
