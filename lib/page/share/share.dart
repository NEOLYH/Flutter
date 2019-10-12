import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

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
    try {
      Response response =
          await Dio().get("https://shequ.dev.ynync.com/api/Index/noticSwiper");
      setState(() {
        shareString = response.toString();
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text(shareString)),
    );
  }
}
