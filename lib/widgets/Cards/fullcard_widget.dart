import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_dubai/constant.dart';
import 'package:task_dubai/model/restuarant.dart';
import 'package:task_dubai/widgets/Cards/subfullcard_widget.dart';

class FullCard extends StatelessWidget {
  FullCard({Key? key, this.restuarantmodel}) : super(key: key);

  Restuarantmodel? restuarantmodel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h, left: 14.w, right: 16.w),
      child: SizedBox(
        height: 330.h,
        width: 313.w,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 187.h,
                width: 313.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.r),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      restuarantmodel!.img!,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 12.h,
              right: 11.w,
              child: Container(
                margin: EdgeInsets.only(
                  right: 8.w,
                ),
                height: 30.h,
                width: 29.w,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(5.r),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 20,
                        color: Color(0x11000014),
                      )
                    ]),
                child: const Center(
                    child: Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 18,
                )),
              ),
            ),
            Visibility(
              visible: restuarantmodel!.offer!,
              child: Positioned(
                bottom: 185.h,
                left: 8.w,
                child: Container(
                  margin: EdgeInsets.only(
                    right: 8.w,
                  ),
                  height: 35.h,
                  width: 91.w,
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
                      '50% Off \n Uptown 20AED',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 11.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 25,
              right: 0,
              left: 0,
              child: CardDetails(restuarantmodel: restuarantmodel),
            ),
          ],
        ),
      ),
    );
  }
}
