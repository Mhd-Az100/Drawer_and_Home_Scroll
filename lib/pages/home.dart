import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:task_dubai/constant.dart';
import 'package:task_dubai/model/restuarant.dart';
import 'package:task_dubai/pages/drawer/controller.dart';
import 'package:task_dubai/widgets/Cards/fullcard_widget.dart';
import 'package:task_dubai/widgets/bottombar_widget.dart';
import 'package:task_dubai/widgets/recent_section_widget.dart';
import 'package:task_dubai/widgets/searchbar_and_sort_widget.dart';
import 'package:task_dubai/widgets/slider_section_widget.dart';
import 'package:task_dubai/widgets/titleappbar_widget.dart';
import 'package:task_dubai/widgets/trendin_gsection_widget.dart';

class Home extends GetView<MyDrawerController> {
  List listImg = [
    'assets/img/meal6.png',
    'assets/img/meal10.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 140.w),
            child: const TitleAppBar(),
          )
        ],
        leading: IconButton(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onPressed: controller.toggleDrawer,
          icon: SvgPicture.asset(
            'assets/icons/menu.svg',
            width: 15.w,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 25.h),
            child: Row(
              children: [
                const SearchBar(),
                SizedBox(
                  width: 8.w,
                ),
                const SortContainer(),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              children: [
                SliderImage(listImg: listImg),
                SizedBox(
                  height: 4.h,
                ),
                const RecentSection(),
                const TrendingSection(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Text(
                    'New Resturant',
                    style: TextStyle(
                        fontSize: 17.sp,
                        color: textColor,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 330.h,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      shrinkWrap: true,
                      itemCount: listrestuarant.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => FullCard(
                            restuarantmodel: listrestuarant[index],
                          )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Text(
                    'Most Order',
                    style: TextStyle(
                        fontSize: 17.sp,
                        color: textColor,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 330.h,
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      itemCount: listrestuarant.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>
                          FullCard(restuarantmodel: listrestuarant[index])),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Text(
                    'All Resturant',
                    style: TextStyle(
                        fontSize: 17.sp,
                        color: textColor,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: listrestuarant.length,
                    itemBuilder: (context, index) => FullCard(
                          restuarantmodel: listrestuarant[index],
                        )),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: bottomNavigationBar(context),
    );
  }
}
