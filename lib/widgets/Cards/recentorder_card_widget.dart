import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_dubai/constant.dart';
import 'package:task_dubai/model/recentorder.dart';

class RecentOrderWidget extends StatelessWidget {
  RecentOrderWidget({Key? key, this.recentOrdermodel}) : super(key: key);
  Recentmodel? recentOrdermodel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 83.h,
      width: 247.w,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: const [
            BoxShadow(
              blurRadius: 20,
              color: Color(0x11000014),
            )
          ]),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Image.asset(
                recentOrdermodel!.img!,
                fit: BoxFit.cover,
                width: 65.w,
                height: 65.h,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                recentOrdermodel!.title!,
                style: TextStyle(
                    fontSize: 15.sp,
                    color: textColor,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 7.w,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 7.h, top: 2.h),
                child: Text(
                  'AED 20',
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: orangeColor,
                  ),
                ),
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/timer.svg',
                  ),
                  SizedBox(
                    width: 5.5.w,
                  ),
                  Text(
                    'Delivered in 30 min',
                    style: TextStyle(
                      fontSize: 11.sp,
                      color: textgreyColor,
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            width: 15.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icons/offer.png'),
              Text(
                '25% off',
                style: TextStyle(
                  fontSize: 11.sp,
                  color: orangeColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
