import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:task_dubai/constant.dart';
import 'package:task_dubai/pages/drawer/controller.dart';
import 'package:task_dubai/pages/drawer/menu.dart';
import 'package:task_dubai/pages/home.dart';

class ZoomHomeDrawer extends GetView<MyDrawerController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyDrawerController>(
      builder: (_) => ZoomDrawer(
        controller: _.zoomDrawerController,
        menuScreen: const MenuScreen(),
        mainScreen: Home(),
        style: DrawerStyle.Style1,
        borderRadius: 30.0.r,
        showShadow: true,
        angle: 0.0,
        backgroundColor: Colors.white.withOpacity(0.4),
        slideWidth: MediaQuery.of(context).size.width * 0.55,
      ),
    );
  }
}
