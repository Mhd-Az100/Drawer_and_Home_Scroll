import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_dubai/constant.dart';

class SortContainer extends StatelessWidget {
  const SortContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53.h,
      width: 51.w,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: const [
            BoxShadow(
              blurRadius: 20,
              color: Color(0x11000014),
            )
          ]),
      child: Center(child: SvgPicture.asset('assets/icons/sortby.svg')),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 53.h,
        width: 292.w,
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
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                    border:
                        const OutlineInputBorder(borderSide: BorderSide.none),
                    hintStyle:
                        TextStyle(fontSize: 13.sp, color: Color(0xffA3A3A3)),
                    hintText: 'Restaurant Name, Cuisine or dish'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                right: 8.w,
              ),
              height: 35.h,
              width: 35.w,
              decoration: BoxDecoration(
                  color: orangeColor,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 20,
                      color: Color(0x11000014),
                    )
                  ]),
              child: Center(child: SvgPicture.asset('assets/icons/search.svg')),
            )
          ],
        ));
  }
}
