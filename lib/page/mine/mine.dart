import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MinePage extends StatefulWidget {
  MinePage({Key key}) : super(key: key);

  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return new AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Material(
          child: Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.white,
          elevation: 0, //去除导航栏底部的线
          actions: <Widget>[
            new IconButton(
              icon: Icon(Icons.fingerprint),
              padding: EdgeInsets.only(right: 30.0),
              color: Colors.blueGrey,
              onPressed: () {},
            )
          ],
          title: new Text(
            '我的',
            style: TextStyle(color: Colors.black, fontSize: 20.0),
          ),
        ),
        body: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: <Widget>[
            new SliverFixedExtentList(
              itemExtent: ScreenUtil().setHeight(1234),
              delegate: new SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Column(
                  children: <Widget>[
                    TopLogin(),
                    WorkView(),
                    CommentView(),
                    _listPencenView()
                  ],
                );
              }, childCount: 1),
            )
          ],
        ),
        // body: SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: <Widget>[
        //       TopLogin(),
        //       WorkView(),
        //       CommentView(),
        //       _listPencenView()
        //     ],
        //   ),
        // )
      )),
    );
  }
}

///注册、登录
class TopLogin extends StatelessWidget {
  const TopLogin({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Container(
              margin: EdgeInsets.fromLTRB(15, 20, 0, 0),
              height: 60,
              child: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://upload.jianshu.io/users/upload_avatars/2788523/95e87c65-2190-4dc9-9eb3-6f1811e1d770.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/80/h/80/format/webp'),
              ),
            ),
            new Container(
              margin: EdgeInsets.only(left: 15),
              alignment: Alignment.center,
              height: 80,
              child: Text('注册/登录',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.green,
                      fontWeight: FontWeight.w700)),
            )
          ],
        ),
      ),
    );
  }
}

///订单与行程
class WorkView extends StatelessWidget {
  const WorkView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
        width: ScreenUtil().setWidth(680),
        height: ScreenUtil().setHeight(150),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5.0,
              )
            ],
            border: Border.all(
                color: Colors.grey, width: 0.1, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new Container(
              height: ScreenUtil().setHeight(100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Icon(Icons.format_align_left),
                  new Text(
                    '订单',
                    style: TextStyle(color: Colors.black38),
                  )
                ],
              ),
            ),
            new Container(
              height: ScreenUtil().setHeight(100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Icon(Icons.filter_drama),
                  new Text(
                    '行程',
                    style: TextStyle(color: Colors.black38),
                  )
                ],
              ),
            ),
            new Container(
              height: ScreenUtil().setHeight(100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Icon(Icons.line_style),
                  new Text(
                    '收藏',
                    style: TextStyle(color: Colors.black38),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

///邀请评价
class CommentView extends StatelessWidget {
  const CommentView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
        width: ScreenUtil().setWidth(680),
        height: ScreenUtil().setHeight(140),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Image.network(
            'https://upload-images.jianshu.io/upload_images/1486904-61a066b7ea741ebc.jpeg?imageMogr2/auto-orient/strip|imageView2/1/w/360/h/240',
            fit: BoxFit.fill),
      ),
    );
  }
}

///个人中心操作列表
class WorkList extends StatelessWidget {
  const WorkList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(),
    );
  }
}

Widget _listTitle(String title, Widget myIcon) {
  return Container(
      // height: ScreenUtil().setHeight(50),
      width: ScreenUtil().setWidth(720),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 1, color: Colors.black12))),
      child: ListTile(
        contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
        leading: myIcon,
        title: Text(title),
        trailing: Icon(Icons.chevron_right),
      ));
}

Widget _listPencenView() {
  return Container(
    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
    // height: ScreenUtil().setHeight(400),
    width: ScreenUtil().setWidth(680),
    child: Column(
      children: <Widget>[
        _listTitle('我要投诉', Icon(Icons.cloud)),
        _listTitle('电子发票', Icon(Icons.color_lens)),
        _listTitle('优惠券', Icon(Icons.confirmation_number)),
        _listTitle('设置', Icon(Icons.settings)),
        _listTitle('推荐好友', Icon(Icons.settings_input_antenna)),
        _listTitle('出去走一走', Icon(Icons.favorite))
      ],
    ),
  );
}
