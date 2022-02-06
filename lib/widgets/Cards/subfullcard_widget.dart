import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_dubai/constant.dart';
import 'package:task_dubai/model/restuarant.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({
    Key? key,
    required this.restuarantmodel,
  }) : super(key: key);

  final Restuarantmodel? restuarantmodel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 19.w, right: 19.w, top: 15.h),
      margin: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
      height: 139.h,
      width: 297.w,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: const [
            BoxShadow(
              blurRadius: 20,
              color: Color(0x11000014),
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 20.h,
                width: 42.w,
                decoration: BoxDecoration(
                    color: orangeColor,
                    borderRadius: BorderRadius.circular(5.r),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 20,
                        color: Color(0x11000014),
                      )
                    ]),
                child: Center(
                  child: Text(
                    '4.3 ⭐',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 11.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Column(
                children: [
                  SvgPicture.asset('assets/icons/marker2.svg'),
                  Text(
                    '7.5 km',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 11.sp,
                        color: textColor,
                        fontWeight: FontWeight.w600),
                  )
                ],
              )
            ],
          ),
          Text(
            restuarantmodel!.title!,
            style: TextStyle(
                fontSize: 15.sp, color: textColor, fontWeight: FontWeight.w600),
          ),
          Text(
            restuarantmodel!.subtitle!,
            style: TextStyle(
              fontSize: 11.sp,
              color: textgreyColor,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/price.svg'),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        'No min order',
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: textColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/marker1.svg'),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        'Live Tracking',
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: textColor,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 52.w,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/timer.svg'),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        '30 min delivery',
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: textColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/cam.svg'),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        'Free delivery',
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: textColor,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 52.w,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
