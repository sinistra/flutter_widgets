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
        body: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('this'),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text('is'),
                new Text('a'),
              ],
            ),
            new Text('row'),
          ],
        ),
      ),
    );
  }
}
