import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_dubai/model/trandingfood.dart';

class TrendingCard extends StatelessWidget {
  TrendingCard({Key? key, this.trendingmodel}) : super(key: key);
  Trendingmodel? trendingmodel;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
            image: DecorationImage(
                image: AssetImage(
              trendingmodel!.img!,
            ))),
        child: Center(
          child: FittedBox(
            child: Text(
              trendingmodel!.title!,
              style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ));
  }
}
