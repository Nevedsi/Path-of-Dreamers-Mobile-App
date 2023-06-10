import 'package:flutter/material.dart';
import 'hal_info1.dart';
import 'item.dart';

void main() {
  runApp(new MaterialApp(
    title: "Path of Dreamers",
    home: new HalamanUtama(),
    debugShowCheckedModeBanner: false,
  ));
}

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: HalamanUtama(),
    );
  }
}

class Utama extends StatefulWidget {
  const Utama({Key? key}) : super(key: key);

  @override
  _Utama createState() => _Utama();
}

class _Utama extends State<Utama> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFF3A3A3A),
        body: TabBarView(
          children: <Widget>[
            GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 15.0,
              crossAxisSpacing: 10.0,
              padding: const EdgeInsets.all(10.0),
              childAspectRatio: 0.75,
              children: items
                  .map<Widget>((Item item) => _ItemGridCellWidget(item))
                  .toList(),
            ),
            ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext context, int position) =>
                    _ItemListCellWidget(items[position]))
          ],
        ),
      ),
    );
  }
}

class _ItemGridCellWidget extends StatelessWidget {
  final Item _item;

  _ItemGridCellWidget(this._item);

  void _selectItem(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => HalInfo1(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return GridTile(
        footer: GridTileBar(
          title: Text(_item.name),
          subtitle: Text(_item.description),
          backgroundColor: Colors.black38,
        ),
        child: GestureDetector(
          onTap: () => _selectItem(context),
          child: Hero(
            key: Key(_item.imageUrl),
            tag: _item.name,
            child: Image.network(
              _item.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ));
  }
}

class _ItemListCellWidget extends StatelessWidget {
  final Item _item;

  _ItemListCellWidget(this._item);

  void _selectItem(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => HalInfo1(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => _selectItem(context),
      title: Text(
        _item.name,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        _item.description,
        maxLines: 2,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      leading: Hero(
        key: Key(_item.imageUrl),
        tag: _item.name,
        child: Image.network(
          _item.imageUrl,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

List<Item> items = [
  Item(
    "https://i.pinimg.com/originals/df/0a/3e/df0a3e2ec30abb1c92d145ef165b714f.gif",
    "Gunung Abadi",
    """Kau adalah pengusaha kaya raya yang mengidap penyakit berat dan harapan terakhirmu adalah mata air misterius di dalam Gunung Kirinari. Apakah kau dapat menyembuhkan penyakitmu?""",
  ),
];
