import 'package:flutter/material.dart';

void main() {
  runApp(new FmtApp());
}

class FmtApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApplication",
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text('Row & Column'),
          ),
          body: new ListView(
            children: <Widget>[
              new ListTile(
                title: new Text('tile#1'),
                trailing: new Icon(Icons.arrow_forward),
              ),
              new ListTile(
                title: new Text('tile#2'),
                trailing: new Icon(Icons.arrow_forward),
              ),
              new ListTile(
                title: new Text('tile#3'),
                trailing: new Icon(Icons.arrow_forward),
              ),
            ],
          )),
    );
  }
}
