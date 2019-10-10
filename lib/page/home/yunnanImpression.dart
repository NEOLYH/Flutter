import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class YunnanImpression extends StatefulWidget {
  YunnanImpression({Key key}) : super(key: key);

  _YunnanImpressionState createState() => _YunnanImpressionState();
}

class _YunnanImpressionState extends State<YunnanImpression> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      // padding: EdgeInsets.symmetric(horizontal: 16),
      // margin: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          new Container(
            // width: ScreenUtil.getInstance().setWidth(150),
            height: ScreenUtil.getInstance().setHeight(310),
            child: Image.network(
              'http://manager-1254950508.cosgz.myqcloud.com/2019091114371249ad5fbc0-d45e-11e9-bd5f-67cf50b445e6.jpg',
              fit: BoxFit.fill,
            ),
          ),
          new Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  height: ScreenUtil.getInstance().setHeight(150),
                  child: Row(
                    children: <Widget>[
                      new Container(
                        child: Image.network(
                          'http://manager-1254950508.cosgz.myqcloud.com/201909111410775d63985f0-d45a-11e9-b55e-affaba98455b.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(width: 10),
                      new Container(
                        child: Image.network(
                          'http://manager-1254950508.cosgz.myqcloud.com/2019091113151712486f830-d453-11e9-b40b-9b5caa6fb21f.jpg',
                          fit: BoxFit.fill,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                new Container(
                  height: ScreenUtil.getInstance().setHeight(150),
                  constraints: BoxConstraints(
                      minWidth: ScreenUtil.getInstance().setWidth(360)),
                  child: Image.network(
                    'http://manager-1254950508.cosgz.myqcloud.com/201909111320966d6070870-d453-11e9-b40b-9b5caa6fb21f.jpg',
                    fit: BoxFit.fill,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
