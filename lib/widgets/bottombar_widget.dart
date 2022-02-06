import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_dubai/constant.dart';

bottomNavigationBar(context) {
  return Theme(
    data: Theme.of(context).copyWith(canvasColor: orangeColor),
    child: Container(
        height: 79.h,
        decoration: const BoxDecoration(
          color: orangeColor,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(17), topLeft: Radius.circular(17)),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(17.0),
            topRight: Radius.circular(17.0),
          ),
          child: BottomNavigationBar(
            unselectedLabelStyle: TextStyle(
                fontSize: 13.sp,
                color: Colors.white,
                fontWeight: FontWeight.w300),
            showUnselectedLabels: true,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/icons/foods.svg'),
                  label: 'Order'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/icons/cart.svg'),
                  label: 'Cart'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/icons/fav.svg'),
                  label: 'Saved'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/icons/noti.svg'),
                  label: 'Notification')
            ],
          ),
        )),
  );
}
