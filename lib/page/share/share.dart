import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:neo_lu/page/model/myModel/yncc.dart';
import 'package:neo_lu/page/unitils/netWorking.dart';
import 'package:neo_lu/page/model/wechat/yyn.dart';

class SharePage extends StatefulWidget {
  SharePage({Key key}) : super(key: key);

  _SharePageState createState() => _SharePageState();
}

class _SharePageState extends State<SharePage> {
  String shareString = '123';

  @override
  void initState() {
    getHttp();
    super.initState();
  }

  void getHttp() async {
    HttpCore.instance.get('yyn/food', (data) {
      Yncc yncc = Yncc.fromJson(data);
      setState(() {
        shareString = yncc.images[0].brief;
      });
    }, errorCallBack: (errorMsg) {
      print("error:" + errorMsg);
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text(shareString)),
    );
  }
}
