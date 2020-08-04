import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new Application()));
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => new _ApplicationState();
}

class _ApplicationState extends State<Application> {
  String msg = '';

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Appbar'),
        leading: new Icon(Icons.menu),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.arrow_forward),
            onPressed: () {
              setState(() {
                msg = 'you pressed Arrow Button';
              });
              print('you pressed Arrow Button');
            },
          ),
          new IconButton(
              icon: new Icon(Icons.add),
              onPressed: () {
                setState(() {
                  msg = 'you pressed Add Button';
                });
                print('you pressed Add Button');
              }),
          new IconButton(
              icon: new Icon(Icons.close),
              onPressed: () {
                setState(() {
                  msg = 'you pressed Close Button';
                });
                print('you pressed Close Button');
              }),
        ],
      ),
      body: new Center(
        child: new Text(msg),
      ),
    );
  }
}
