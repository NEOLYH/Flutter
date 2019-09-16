import 'package:flutter/material.dart';
import 'page/home/home.dart';
import 'page/kehu/kehu.dart';
import 'page/paragrom/paragrom.dart';
import 'page/mine/mine.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'NEOFlutter'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _tabIndex = 0;
     
     @override
     Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: Text(widget.title)),
           bottomNavigationBar: BottomNavigationBar(
               type: BottomNavigationBarType.fixed,
               currentIndex: _tabIndex,
               onTap: (index) {
                 setState(() {
                   _tabIndex = index;
                 });
               },
               items: [
                 BottomNavigationBarItem(
                     title: Text('首页'), icon: Icon(Icons.home)),
                 BottomNavigationBarItem(
                     title: Text('客户'), icon: Icon(Icons.hotel)),
                 BottomNavigationBarItem(
                     title: Text('工作台'), icon: Icon(Icons.cake)),
                 BottomNavigationBarItem(title: Text('我的'), icon: Icon(Icons.menu))
               ]));
     }
   
}