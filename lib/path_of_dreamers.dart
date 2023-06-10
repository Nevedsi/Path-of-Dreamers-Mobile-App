import 'package:flutter/material.dart';

import './hal_utama.dart';
import './hal_syarat.dart';
import './hal_tentang.dart';
import './hal_penerbitan.dart';

void main() {
  runApp(new MaterialApp(
    title: "Tab Bar (Arya)",
    home: new Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _Home createState() => new _Home();
}

class _Home extends State<Home> with SingleTickerProviderStateMixin {
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
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: (Colors.black),
        title: new Text(
          "Path of Dreamers",
          style: new TextStyle(
              color: Colors.white,
              fontFamily: "Sans Serif",
              decoration: TextDecoration.none,
              fontSize: 25.0),
        ),
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.home),
              text: "Home",
            ),
            new Tab(icon: new Icon(Icons.feedback), text: "S & K"),
            new Tab(icon: new Icon(Icons.person_outline), text: "About Us"),
            new Tab(icon: new Icon(Icons.book), text: "Penerbitan"),
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new Utama(),
          new Syarat(),
          new Tentang(),
          new Penerbitan(),
        ],
      ),
    );
  }
}
