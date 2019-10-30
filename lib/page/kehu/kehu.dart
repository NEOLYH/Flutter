import 'package:flutter/material.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:neo_lu/page/kehu/petCard.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

class KehuPage extends StatefulWidget {
  KehuPage({Key key}) : super(key: key);

  _KehuPageState createState() => _KehuPageState();
}

class _KehuPageState extends State<KehuPage> {
  int _count = 10;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text('客户'),
          ),
          body: EasyRefresh(
            child: new ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return new petCard();
              },
              separatorBuilder: (BuildContext context, int index) {
                return new Container(height: 0.0, color: Colors.red);
              },
              itemCount: _count,
            ),
            onRefresh: () async {
              setState(() {
                _count = 10;
              });
            },
            onLoad: () async {
              setState(() {
                _count = _count + 10;
              });
            },
          )

          // new ListView.separated(
          //   itemBuilder: (BuildContext context, int index) {
          //     return new petCard();
          //   },
          //   separatorBuilder: (BuildContext context, int index) {
          //     return new Container(height: 0.0, color: Colors.red);
          //   },
          //   itemCount: 10,
          // )

          ),
    );
  }
}
