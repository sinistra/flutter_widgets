import 'package:flutter/material.dart';

void main() {
  runApp(
    new FmtApp()
  );
}

class FmtApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Stateless Widget',
      home : new Scaffold(
        body: new Container(
          color: Colors.green,
          child: new Container(
            color: Colors.amber,
            margin: EdgeInsets.all(60.0),
          ),
        ),
      )
    );
  }
}


