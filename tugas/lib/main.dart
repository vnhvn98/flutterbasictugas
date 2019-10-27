import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(new MaterialApp(
    title: "Sumpah Pemuda",
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
    home: new FirstScreen(),
  ));
}

class FirstScreen extends StatelessWidget {
  final String title = 'Sumpah Pemuda';
  final String location = '28 Oktober 2019';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sumpah Pemuda'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'img/sumpahpemuda.jpg',
            height: 250.0,
            width: 412.0,
            fit: BoxFit.fill,
          ),
          Container(
            height: 15.0,
          ),
          Row(
            children:  [
              Container(
                width: 15.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [

                ],
              ),
              Container(
                width: 130.0,
              ),


            ],
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: RaisedButton(
              child: Text('Tokoh Pahlawan Sumpah Pemuda'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return Home();
                    },
                  ),
                );
              },
            ),
          ),
        ],

      ),

    );
  }
}
