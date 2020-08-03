import 'package:flutter/material.dart';

void main() {
  runApp(new FmtApp());
}

class FmtApp extends StatefulWidget {
  @override
  _FmtAppState createState() => _FmtAppState();
}

class _FmtAppState extends State<FmtApp> {
  List<int> items = new List();

  @override
  void initState() {
    for (int i=0; i < 50; i++) {
      items.add(i);
    }
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'My App',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Array List Widget'),
        ),
        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return new ListTile(
              title: new Text('item # $index'),
              trailing: new Icon(Icons.arrow_forward),
            );
          },
        ),
      ),
    );
  }
}
