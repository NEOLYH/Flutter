import 'package:flutter/material.dart';
import 'package:neo_lu/page/home/navigation_swiper.dart';
import 'package:neo_lu/page/home/yunnanImpression.dart';
import 'package:neo_lu/config/v_empty_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neo_lu/page/mine/mine.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: PreferredSize(
          //设置导航栏高度为0
          child: AppBar(
            elevation: 0,
          ),
          preferredSize: Size.zero,
        ),
        backgroundColor: Colors.blue,
        body: SafeArea(
          bottom: false,
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setWidth(150)),
                    child: TabBar(
                      labelStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      unselectedLabelStyle: TextStyle(fontSize: 14),
                      indicator: UnderlineTabIndicator(),
                      controller: _tabController,
                      tabs: <Widget>[
                        Tab(
                          text: '发现',
                        ),
                        Tab(
                          text: '我的',
                        ),
                        Tab(
                          text: '动态',
                        )
                      ],
                    ),
                  ),
                  // Positioned(
                  //   right: ScreenUtil().setWidth(20),
                  //   child: IconButton(
                  //     icon: Icon(
                  //       Icons.search,
                  //       size: ScreenUtil().setWidth(50),
                  //       color: Colors.black87,
                  //     ),
                  //     onPressed: () {},
                  //   ),
                  // )
                ],
              ),
              // VEmptyView(20),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: <Widget>[
                    YunnanImpression(),
                    YunnanImpression(),
                    YunnanImpression()
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
