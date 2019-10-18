import 'package:flutter/material.dart';
import 'package:neo_lu/page/paragrom/myWork.dart';

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
          title: new Text(
            '工作台',
            style: TextStyle(color: Colors.black, fontSize: 20.0),
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
            Container(
              padding: EdgeInsets.only(right: 20.0),
              child: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.black12,
                ),
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (BuildContext builder) {
                    return MyWork(
                      url:
                          'https://mp-gw.ybsjyyn.com//h5/aggregation/detail#/aggregation/detail?id=5d71d555c0c3a8223705a749',
                      title: '详情',
                    );
                  }));
                },
              ),
            )
          ],
        ),
        body: Paragrom(),
      ),
    );
  }
}

class Paragrom extends StatefulWidget {
  Paragrom({Key key}) : super(key: key);

  _ParagromState createState() => _ParagromState();
}

class _ParagromState extends State<Paragrom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('工作台'),
      ),
    );
  }
}
