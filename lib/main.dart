import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'page/index/index.dart';
import 'package:neo_lu/config/router_manager.dart';

void main() => runApp(new ZhiHu());

class ZhiHu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return new MaterialApp(
      title: "知乎-高仿版",
      debugShowCheckedModeBanner: false,
      home: new Index(),
      initialRoute: RouteName.splash,
    );
  }
}
