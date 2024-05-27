import 'dart:math';

import 'package:animatedimageslider/const.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:overlapped_carousel/overlapped_carousel.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class SliderTwo extends StatelessWidget {
  const SliderTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageCtrl = PageController(initialPage: 0);
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 0.2.dp, vertical: 0.2.dp),
        width: double.infinity,
        height: 100.h,
        // decoration: const BoxDecoration(
        //     image: DecorationImage(
        //         fit: BoxFit.cover,
        //         image: CachedNetworkImageProvider(
        //             'https://i.pinimg.com/originals/73/03/85/7303858d8f1ee448bf2d1c35e672461f.gif'))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 50.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FlutterLogo(
                          size: 20.sp,
                        ),
                        const SizedBox(height: 10),
                        TextWidget(size: 11.sp, text: 'Anime')
                      ]),
                  SizedBox(height: 10.h),
                  TextWidget(text: 'Naruto', size: 20.sp),
                  TextWidget(
                      text:
                          'A spirited ninja with a dream of becoming the Hokage, Naruto harnesses the powe'
                          '  r of the Nine-Tails fox demon sealed within him.',
                      size: 15.sp,
                      letterSpacing: 1.4),
                  SizedBox(height: 3.h),
                  Row(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              minimumSize: Size(10.w, 6.h),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.sp))),
                          onPressed: () {},
                          child: TextWidget(
                            text: 'Watch Now',
                            size: 14.sp,
                            color: Colors.white,
                          )),
                      SizedBox(width: 5.w),
                      Container(
                          width: 11.w,
                          height: 4.h,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Colors.white, width: 4.sp))),
                          child: TextWidget(
                            text: 'Read more',
                            size: 14.sp,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 6,
                  child: Column(
                    children: [
                      Chip(
                          avatar: const Icon(Icons.shield_sharp),
                          label: TextWidget(
                              text: 'sssssssssssssssssss', size: 14.sp)),
                      SizedBox(height: 3.h),
                      Chip(
                          avatar: const Icon(Icons.female),
                          label: TextWidget(
                              text: 'sssssssssssssssssss', size: 14.sp)),
                      SizedBox(height: 3.h),
                      Chip(
                          avatar: const Icon(Icons.moving_outlined),
                          label: TextWidget(
                              text: 'sssssssssssssssssss', size: 14.sp)),
                    ],
                  ),
                ),
                Flexible(
                    flex: 6,
                    child: Column(
                      children: [
                        // Container(
                        //   width: double.infinity,
                        //   height: 30.h,
                        //   color: Colors.black26,
                        // )
                        SizedBox(
                          height: min(
                              screenWidth / 3.3 * (16 / 9), screenHeight * .9),
                          child: OverlappedCarousel(
                            widgets: [
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.red,
                              ),
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.deepOrange,
                              ),
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.green,
                              ),
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.brown,
                              ),
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.yellow,
                              ),
                            ], //List of widgets
                            currentIndex: 0,
                            onClicked: (index) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("You clicked at $index"),
                                ),
                              );
                            },
                            // To obscure or blur cards not in focus use the obscure parameter.
                            obscure: 0.4,
                            // To control skew angle
                            skewAngle: 0.25,
                          ),
                        ),
                      ],
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ArrowButton(
                  iconData: Icons.arrow_back_ios,
                  press: () {},
                ),
                SizedBox(width: 1.w),
                ArrowButton(
                  iconData: Icons.arrow_forward_ios,
                  press: () {},
                ),
                SizedBox(width: 2.w),
                SmoothPageIndicator(
                  controller: pageCtrl,
                  count: 5,
                  effect: JumpingDotEffect(
                      radius: 10.sp, dotHeight: 1.w, dotWidth: 3.h),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ArrowButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback? press;
  const ArrowButton({
    super.key,
    required this.iconData,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(15.sp),
        decoration:
            const BoxDecoration(color: Colors.black87, shape: BoxShape.circle),
        child: Icon(
          iconData,
          size: 15.sp,
        ),
      ),
    );
  }
}
