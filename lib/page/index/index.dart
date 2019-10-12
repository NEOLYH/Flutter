import 'package:flutter/material.dart';
import 'package:neo_lu/page/home/home.dart';
import 'package:neo_lu/page/kehu/kehu.dart';
import 'package:neo_lu/page/paragrom/paragrom.dart';
import 'package:neo_lu/page/mine/mine.dart';
import 'package:neo_lu/page/share/share.dart';
import 'package:neo_lu/page/index/navigation_icon_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Index extends StatefulWidget {
  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> with TickerProviderStateMixin {
  int _currentIndex = 0;
  List<NavigationIconView> _navigationViews;
  List<StatefulWidget> _pageList;
  StatefulWidget _currentPage;

  @override
  void initState() {
    super.initState();
    _navigationViews = <NavigationIconView>[
      new NavigationIconView(
        icon: new Icon(Icons.home),
        title: new Text('首页'),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.line_weight),
        title: new Text('客户'),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.laptop_mac),
        title: new Text('工作台'),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.edit_location),
        title: new Text('分享'),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.slow_motion_video),
        title: new Text('我的'),
        vsync: this,
      )
    ];
    for (NavigationIconView view in _navigationViews) {
      view.controller.addListener(_rebuild);
    }
    _pageList = <StatefulWidget>[
      new HomePage(),
      new KehuPage(),
      new ParagromPage(),
      new SharePage(),
      new MinePage()
    ];
    _currentPage = _pageList[_currentIndex];
  }

  void _rebuild() {
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    for (NavigationIconView view in _navigationViews) {
      view.controller.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    final BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
        items: _navigationViews
            .map((NavigationIconView navigationIconView) =>
                navigationIconView.item)
            .toList(),
        currentIndex: _currentIndex,
        fixedColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _navigationViews[_currentIndex].controller.reverse();
            _currentIndex = index;
            _navigationViews[_currentIndex].controller.forward();
            _currentPage = _pageList[_currentIndex];
          });
        });

    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
          body: new Center(
            child: _currentPage,
          ),
          bottomNavigationBar: bottomNavigationBar,
        ));
  }
}
