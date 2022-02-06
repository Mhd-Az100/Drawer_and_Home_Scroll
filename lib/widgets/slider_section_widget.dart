import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SliderImage extends StatelessWidget {
  const SliderImage({
    Key? key,
    required this.listImg,
  }) : super(key: key);

  final List listImg;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 171.h,
        viewportFraction: 0.75,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 7),
        autoPlayAnimationDuration: const Duration(seconds: 7),
        autoPlayCurve: Curves.ease,
        scrollDirection: Axis.horizontal,
      ),
      items: listImg
          .map((e) => Image.asset(
                e,
                fit: BoxFit.fill,
              ))
          .toList(),
    );
  }
}
