import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:task_dubai/constant.dart';
import 'package:task_dubai/model/trandingfood.dart';
import 'package:task_dubai/widgets/Cards/trending_card_widget.dart';

class TrendingSection extends StatelessWidget {
  const TrendingSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 19.w, right: 19.w, top: 15.h),
      margin: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
      height: 202.h,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Trending Food',
            style: TextStyle(
                fontSize: 15.sp, color: textColor, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10.h,
          ),
          Expanded(
            child: StaggeredGridView.countBuilder(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              shrinkWrap: true,
              crossAxisCount: 3,
              itemCount: listtrending.length,
              itemBuilder: (BuildContext context, int index) =>
                  TrendingCard(trendingmodel: listtrending[index]),
              staggeredTileBuilder: (int index) =>
                  const StaggeredTile.count(1, 0.7),
              mainAxisSpacing: 1,
              crossAxisSpacing: 10,
            ),
          ),
        ],
      ),
    );
  }
}
