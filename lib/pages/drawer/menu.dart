import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:task_dubai/constant.dart';
import 'package:task_dubai/pages/drawer/controller.dart';

class MenuScreen extends GetView<MyDrawerController> {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: orangeColor,
        elevation: 0,
      ),
      backgroundColor: orangeColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 40.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFDADADA),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/img/p.jpg'), fit: BoxFit.cover),
                ),
                width: 70.w,
                height: 70.h,
              ),
              Padding(
                padding: EdgeInsets.only(top: 12.h, bottom: 91.h),
                child: Text(
                  'John Wa.',
                  style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    'assets/icons/foods.svg',
                    width: 22.w,
                  ),
                  SizedBox(
                    width: 9.9.w,
                  ),
                  Text(
                    'Orders.',
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 52.h,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    'assets/icons/clock.svg',
                    width: 22.w,
                  ),
                  SizedBox(
                    width: 9.9.w,
                  ),
                  Text(
                    'History.',
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 52.h,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    'assets/icons/privacy.svg',
                    width: 22.w,
                  ),
                  SizedBox(
                    width: 9.9.w,
                  ),
                  Text(
                    'Privacy.',
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 52.h,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    'assets/icons/logout.svg',
                    width: 22.w,
                  ),
                  SizedBox(
                    width: 9.9.w,
                  ),
                  Text(
                    'Logout.',
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 117.h,
              ),
              Text(
                'Language.',
                style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.language_outlined,
                    color: Colors.white,
                  ),
                  Text(
                    'Eng.',
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 65.w,
                  ),
                  const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
