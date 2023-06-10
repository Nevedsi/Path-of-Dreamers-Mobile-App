import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Path of Dreamers",
    home: new Syarat(),
    debugShowCheckedModeBanner: false,
  ));
}

class Syarat extends StatefulWidget {
  const Syarat({Key? key}) : super(key: key);

  @override
  _Syarat createState() => _Syarat();
}

class _Syarat extends State<Syarat> {
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
              "Syarat dan Ketentuan",
              textAlign: TextAlign.center,
              style: new TextStyle(fontSize: 30.0, color: Colors.white),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 30.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eu pretium est. Curabitur ac est convallis, pharetra mi non, consequat justo. Suspendisse mattis sem ac orci ullamcorper, at sagittis quam venenatis. Integer a lacus nec elit vestibulum hendrerit sed in felis. Aenean commodo quis quam id pretium. Nulla scelerisque lacus sit amet rhoncus tristique. Vivamus sed quam mollis, blandit velit ac, luctus dolor. Pellentesque tincidunt nunc ullamcorper leo feugiat convallis. Nulla lorem velit, tempor ac orci vitae, egestas fermentum mauris. In ut augue vitae erat tempor aliquam. Curabitur vestibulum, massa aliquam feugiat egestas, eros magna scelerisque metus, eu laoreet elit lacus pharetra velit. Duis congue ligula et urna aliquet, et mollis leo gravida. In hac habitasse platea dictumst. Duis tincidunt nisi quis tortor interdum scelerisque. \n\ \n\Integer enim massa, gravida non euismod eget, ullamcorper ac felis. Praesent ut bibendum metus. Nulla aliquam quam ultrices tortor aliquam, consequat iaculis leo rutrum. Proin dictum risus at dictum egestas. Sed rutrum erat sit amet hendrerit hendrerit. Phasellus porta purus ac nisl consectetur, nec interdum nibh laoreet. \n\ \n\Suspendisse potenti. Aliquam vulputate dui eget turpis sodales, quis bibendum libero consequat. Vestibulum diam arcu, tincidunt id malesuada vel, sagittis vitae diam. Aenean lacinia nisl a pellentesque vestibulum. Nunc dolor augue, auctor non consectetur eget, fermentum in urna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam nisl diam, semper sit amet ante non, ultricies fermentum sem. Nunc venenatis commodo quam. Cras convallis id nulla non semper. Quisque non accumsan sem, et eleifend neque.",
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
