import 'package:flutter/material.dart';

void main() {
  runApp(
    new FmtApp()
  );
}

class FmtApp extends StatefulWidget {
  @override
  _FmtAppState createState() => _FmtAppState();
}

class _FmtAppState extends State<FmtApp> {

  String ttext = '';
  @override
  void initState() {
    ttext = 'Click this button';
    super.initState();
  }

  void changeButton() {
    setState(() {
      ttext = 'Button changed';
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Stateful widget',
      home: new Scaffold(
        body: new Center(
          child: new RaisedButton(onPressed: () {changeButton();}, child: new Text(ttext, textDirection: TextDirection.ltr,),),
        ),
      )
    );
  }
}

