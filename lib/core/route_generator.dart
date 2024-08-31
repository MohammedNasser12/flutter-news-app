import 'package:flutter/material.dart';
import 'package:news_app/core/routes_name.dart';
import 'package:news_app/home.dart/home.dart';
import 'package:news_app/setting/setting.dart';
import 'package:news_app/splash/splash.dart';

class RouteGenerator {
  static Route<dynamic>? onGenerator(RouteSettings Settings) {
    switch (Settings.name) {
      case RoutesName.initial:
        return MaterialPageRoute(
          builder: (context) => Splash(),
          settings: Settings,
        );

      case RoutesName.home:
        return MaterialPageRoute(
          builder: (context) => Home(),
          settings: Settings,
        );

        case RoutesName.setting:
        return MaterialPageRoute(
          builder: (context) => Setting(),
          settings: Settings,
        );


      default:
        return MaterialPageRoute(
          builder: (context) => Splash(),
        );
    }
  }
}
