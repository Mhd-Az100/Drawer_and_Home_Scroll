import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_dubai/constant.dart';
import 'package:task_dubai/model/recentorder.dart';
import 'package:task_dubai/widgets/Cards/recentorder_card_widget.dart';

class RecentSection extends StatelessWidget {
  const RecentSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
      height: 140.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: const [
            BoxShadow(
              blurRadius: 20,
              color: Color(0x11000014),
            )
          ]),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 15.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Orders',
                  style: TextStyle(
                      fontSize: 15.sp,
                      color: textColor,
                      fontWeight: FontWeight.w600),
                ),
                InkWell(
                  child: Text(
                    'View All',
                    style: TextStyle(
                        fontSize: 11.sp,
                        color: orangeColor,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 90.h,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                shrinkWrap: true,
                itemCount: listrecent.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    RecentOrderWidget(recentOrdermodel: listrecent[index])),
          )
        ],
      ),
    );
  }
}
