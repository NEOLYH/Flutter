import 'package:flutter/material.dart';
import 'package:neo_lu/page/ui/splash.dart';
import 'package:neo_lu/config/page_route_animate.dart';

class RouteName {
  static const String splash = 'splash';
}

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splash:
        return NoAnimRouteBuilder(SplashPage());
        break;
      default:
    }
  }
}
