import 'package:flutter/material.dart';
import 'ending3.dart';
import 'ending4.dart';

void main() => runApp(Hal3());

class Hal3 extends StatelessWidget {
  const Hal3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Karya 1',
      home: Hal2b(title: 'Judul 1'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Hal2b extends StatefulWidget {
  final String title;
  const Hal2b({Key? key, required this.title}) : super(key: key);

  @override
  _Hal2b createState() => _Hal2b();
}

class _Hal2b extends State<Hal2b> {
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
                "Kau memutuskan untuk meluangkan waktu untuk bertemu dengan kepala suku. Anggota tim tersebut memimpin rombongan menuju desa suku tersebut. Setelah sampai, kepala desa menyambutmu dan mempersilahkan dirimu untuk masuk ke rumahnya. Setelah kau dipersilahkan untuk duduk, kepala desa kemudian menjelaskan bahwa mata air tersebut dapat menjadi sebuah anugerah atau sebuah kutukan. Ia kemudian menjelaskan bahwa mata air harus diberikan doa sebelum diminum agar dapat berefek dan jangan meminum atau mengambil terlalu banyak untuk menghindari kutukannya. Kepala suku tidak menjelaskan lebih lanjut mengenai kutukannya. Tak lama, kau mempermisikan dirimu dan melanjutkan perjalanan ke mata air. \n\nKau bersama dengan rombonganmu berjalan selama berjam-jam. Tubuhmu merasa sangat lelah dan sakit, tetapi kau tahu kalau kau harus terus berjalan. Hari kini sudah sore dan pada akhirnya kau beserta rombonganmu sampai di mata air. \n\nKau melihat beberapa anggota tim sedang meminum mata air. Beberapa di antaranya meminum dengan jumlah yang banyak. Melihat itu, kau pun teringat dengan apa yang dibicarakan oleh kepala suku dan kau mencoba untuk mengingatkan mereka, tetapi mereka tidak peduli. Kemudian kau pun memberikan doa dan mata air pun kau minum dalam jumlah yang mencukupi dan seketika rasa sakit dan lelah yang telah kau derita menghilang dengan cepat. Yakin bahwa penyakitmu sudah sembuh, kau pun menangis, air mata bahagia mengalir dari matamu. Kini penyakitmu sudah sembuh, kau dapat pulang, tetapi di satu sisi kau ingin memiliki semua mata air ini agar kau dapat hidup dengan umur yang panjang.",
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
                  MaterialPageRoute(builder: (context) => EndingTiga()),
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
                  MaterialPageRoute(builder: (context) => EndingEmpat()),
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
