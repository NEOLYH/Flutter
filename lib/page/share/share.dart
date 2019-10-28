import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:neo_lu/page/model/myModel/yncc.dart';
import 'package:neo_lu/page/unitils/netWorking.dart';

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
      print(data);
    }, errorCallBack: (errorMsg) {
      print("error:" + errorMsg);
      return null;
    });

    // try {
    //   Response response =
    //       await Dio().get("http://yapi.demo.qunar.com/mock/19110/yyn/food");
    //   print(response.data);

    //   // String res2Json = json.encode(response.data);
    //   // Map<String, dynamic> map = json.decode(res2Json);

    //   // print(map);

    //   Yncc yncc = Yncc.fromJson(response.data);

    //   setState(() {
    //     shareString = yncc.title;
    //   });
    // } catch (e) {
    //   print(e);
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text(shareString)),
    );
  }
}
