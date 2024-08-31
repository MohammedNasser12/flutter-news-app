import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app/core/routes_name.dart';
import 'package:news_app/home.dart/home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, RoutesName.home);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/splash.png");
  }
}
