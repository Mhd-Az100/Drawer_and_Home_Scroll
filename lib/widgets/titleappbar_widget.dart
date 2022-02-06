import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_dubai/constant.dart';

class TitleAppBar extends StatelessWidget {
  const TitleAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color(0xFFDADADA),
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage('assets/img/p.jpg'), fit: BoxFit.cover),
          ),
          width: 37.w,
          height: 37.h,
        ),
        SizedBox(
          width: 7.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Home',
              style: TextStyle(
                  fontSize: 15.sp,
                  color: orangeColor,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              width: 7.w,
            ),
            Text(
              'Almeena tower - bolonindg…',
              style: TextStyle(fontSize: 13.sp, color: textColor),
            )
          ],
        )
      ],
    );
  }
}
