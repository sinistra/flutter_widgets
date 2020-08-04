import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new Application()));
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => new _ApplicationState();
}

class _ApplicationState extends State<Application> {
  void dialog() {
    showDialog(
        context: context,
        child: new AlertDialog(
          title: new Text('Warning'),
          content: new Text('Press the close button to dismiss this dialog'),
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                })
          ],
        ));
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            dialog();
          },
          child: new Text('Show AlertDialog'),
        ),
      ),
    );
  }
}
