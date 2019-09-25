import 'package:flutter/material.dart';

class KehuPage extends StatefulWidget {
  KehuPage({Key key}) : super(key: key);

  _KehuPageState createState() => _KehuPageState();
}

class _KehuPageState extends State<KehuPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('客户'),
        ),
      ),
    );
  }
}
