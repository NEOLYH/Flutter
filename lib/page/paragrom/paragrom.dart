import 'package:flutter/material.dart';

class ParagromPage extends StatefulWidget {
  ParagromPage({Key key}) : super(key: key);

  _ParagromPageState createState() => _ParagromPageState();
}

class _ParagromPageState extends State<ParagromPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('工作台'),
        ),
      ),
    );
  }
}
