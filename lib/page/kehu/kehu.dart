import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:neo_lu/page/kehu/petCard.dart';

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
          body: new ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return new petCard();
            },
            separatorBuilder: (BuildContext context, int index) {
              return new Container(height: 0.0, color: Colors.red);
            },
            itemCount: 10,
          )),
    );
  }
}
