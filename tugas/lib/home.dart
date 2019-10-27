import 'package:flutter/material.dart';
import 'detail.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  List<Container> daftarPahlawan = new List();

  var karakter = [
    {"nama": "Sugondo Jojopoespito", "gambar": "Sugondo.jpg"},
    {"nama": "Muhammad Yamin", "gambar": "myamin.jpg"},
    {"nama": "Soenario Sastrowardoyo", "gambar": "Soenario.jpg"},
    {"nama": "W.R Supratman", "gambar": "wrsupratman.jpg"},
    {"nama": "Djoko Marsaid", "gambar": "djoko.jpg"},
    {"nama": "Amir Syarifuddin", "gambar": "amir.jpeg"},
    {"nama": "Sarmidi Mangoensarkoro", "gambar": "mangunsarkoro.jpg"},
    {"nama": "Sie Kok Liong", "gambar": "SieKokLiong.jpg"},
  ];

  _buatlist() async {
    for (var i = 0; i < karakter.length; i++) {
      final karakternya = karakter[i];
      final String gambar = karakternya["gambar"];

      daftarPahlawan.add(new Container(
          padding: new EdgeInsets.all(10.0),
          child: new Card(
              child: new Column(
                children: <Widget>[
                  new Hero(
                    tag: karakternya['nama'],
                    child: new Material(
                      child: new InkWell(
                        onTap: () =>
                            Navigator.of(context).push(new MaterialPageRoute(
                              builder: (BuildContext context) => new Detail(
                                nama: karakternya['nama'],
                                gambar: gambar,
                              ),
                            )),
                        child: new Image.asset(
                          "img/$gambar",
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  new Padding(
                    padding: new EdgeInsets.all(10.0),
                  ),
                  new Text(
                    karakternya['nama'],
                    style: new TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold),
                  )
                ],
              ))));
    }
  }

  @override
  void initState() {
    _buatlist();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Sumpah Pemuda",
          style: new TextStyle(color: Colors.white),
        ),
      ),
      body: new GridView.count(
        crossAxisCount: 2,
        children: daftarPahlawan,
      ),
    );
  }
}
