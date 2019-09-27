import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class petCard extends StatelessWidget {
  final PetCardViewModel data;

  const petCard({Key key, this.data}) : super(key: key);

  Widget renderCover() {
    return Stack(
      fit: StackFit.passthrough,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
          child: Image.network(
            'https://upload-images.jianshu.io/upload_images/937049-719a047f7102ab1c.jpg?imageMogr2/auto-orient/strip|imageView2/2/w/1024/format/webp',
            height: 200,
            fit: BoxFit.fitWidth,
          ),
        ),
        Positioned(
          left: 0,
          top: 100,
          right: 0,
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(0, 0, 0, 0),
                Color.fromARGB(80, 0, 0, 0),
              ],
            )),
          ),
        )
      ],
    );
  }

  Widget renderUserInfo() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                radius: 20,
                backgroundColor: Color(0xFFCCCCCC),
                backgroundImage: NetworkImage(
                    'https://upload-images.jianshu.io/upload_images/2788523-952c9ee3ea5375d5.jpeg?imageMogr2/auto-orient/strip|imageView2/1/w/300/h/240'),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('大米要吃小米粥',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF333333),
                      )),
                  Padding(
                    padding: EdgeInsets.only(top: 2),
                  ),
                  Text('小米要吃大米饭',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF999999),
                      ))
                ],
              )
            ],
          ),
          Text('12:59',
              style: TextStyle(
                fontSize: 13,
                color: Color(0xFF999999),
              ))
        ],
      ),
    );
  }

  Widget renderPublishContent() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 14),
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
                color: Color(0xFFFFC600),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                )),
            child: Text('小鸡儿崽子',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                )),
          ),
          Text(
            '何为不甘,大海星辰皆不得。何为寂寞,流年岁月空蹉跎。',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xFF333333)),
          )
        ],
      ),
    );
  }

  Widget renderInteractionArea() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.message,
                size: 16,
                color: Color(0xFF999999),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6),
              ),
              Text(
                '365',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF999999),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.favorite,
                size: 16,
                color: Color(0xFF999999),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6),
              ),
              Text(
                '154',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF999999),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.share,
                size: 16,
                color: Color(0xFF999999),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6),
              ),
              Text(
                '126',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF999999),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil.getInstance().setHeight(800),
      child: Container(
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                blurRadius: 6,
                spreadRadius: 4,
                color: Color.fromARGB(20, 0, 0, 0),
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            this.renderCover(),
            this.renderUserInfo(),
            this.renderPublishContent(),
            this.renderInteractionArea()
          ],
        ),
      ),
    );
  }
}

class PetCardViewModel {
  /// 封面地址
  final String coverUrl;

  /// 用户头像地址
  final String userImgUrl;

  /// 用户名
  final String userName;

  /// 用户描述
  final String description;

  /// 话题
  final String topic;

  /// 发布时间
  final String publishTime;

  /// 发布内容
  final String publishContent;

  /// 回复数量
  final int replies;

  /// 喜欢数量
  final int likes;

  /// 分享数量
  final int shares;

  const PetCardViewModel({
    this.coverUrl,
    this.userImgUrl,
    this.userName,
    this.description,
    this.topic,
    this.publishTime,
    this.publishContent,
    this.replies,
    this.likes,
    this.shares,
  });
}
