import 'package:flutter/material.dart';
import 'package:neo_lu/page/home/navigation_swiper.dart';
import 'package:neo_lu/page/home/yunnanImpression.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text('首页'),
          ),
          body: new SingleChildScrollView(
              child: new Container(
                  child: new Column(
            children: <Widget>[
              new Container(
                child: NavigationSwiper(),
              ),
              YunnanImpression()
            ],
          )))),
    );
  }
}
