import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:task_dubai/main.dart';
import 'package:task_dubai/pages/drawer/zoomdarwer.dart';

import 'home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => ZoomHomeDrawer())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: Colors.white,
        child: Stack(
          children: [
            SvgPicture.asset(
              'assets/img/background.svg',
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 30,
              left: 0,
              right: 0,
              child: SizedBox(
                  height: 300,
                  width: 300,
                  child: Lottie.asset('assets/lottie/splash.json')),
            ),
          ],
        ));
  }
}
