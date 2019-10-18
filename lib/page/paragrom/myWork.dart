import 'package:flutter/material.dart';

class MyWork extends StatelessWidget {
  const MyWork({Key key, this.url, this.title}) : super(key: key);
  final String url;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text(
            title,
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ),
        body: Center(
          child: Text('你是谁'),
        ));
  }
}
