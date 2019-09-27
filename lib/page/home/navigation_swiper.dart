import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavigationSwiper extends StatefulWidget {
  NavigationSwiper({Key key}) : super(key: key);

  _NavigationSwiperState createState() => _NavigationSwiperState();
}

class _NavigationSwiperState extends State<NavigationSwiper> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil.getInstance().setHeight(333),
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            "https://upload-images.jianshu.io/upload_images/937049-719a047f7102ab1c.jpg?imageMogr2/auto-orient/strip|imageView2/2/w/1024/format/webp",
            fit: BoxFit.fill,
          );
        },
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        loop: true,
        duration: 300,
        autoplay: true,
        // control: SwiperControl(),
        autoplayDelay: 5000,
        autoplayDisableOnInteraction: true,
        pagination: SwiperPagination(
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(bottom: 20.0, right: 20.0),
            builder: SwiperPagination.fraction),
      ),
    );
  }
}
