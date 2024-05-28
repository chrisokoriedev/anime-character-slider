import 'package:animatedimageslider/const.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../list_of_character.dart';

class SliderTwo extends StatefulWidget {
  const SliderTwo({super.key});

  @override
  State<SliderTwo> createState() => _SliderTwoState();
}

class _SliderTwoState extends State<SliderTwo> {
  @override
  Widget build(BuildContext context) {
    final PageController pageCtrl = PageController(initialPage: 0);

    int currentIndex = 0;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                controller: pageCtrl,
                itemCount: getList.length,
                itemBuilder: (_, index) {
                  final data = getList[index];

                  return Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.2.dp, vertical: 0.2.dp),
                    width: double.infinity,
                    height: 100.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: CachedNetworkImageProvider(
                                data.backgroundImage))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                              borderRadius:
                                                  BorderRadius.circular(8.sp))),
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
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.white,
                                                  width: 4.sp))),
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
                        SizedBox(height: 4.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              flex: 6,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Chip(
                                      avatar: const Icon(Icons.shield_sharp),
                                      label: TextWidget(
                                          text: data.weapon, size: 14.sp)),
                                  SizedBox(height: 3.h),
                                  Chip(
                                      avatar: const Icon(Icons.female),
                                      label: TextWidget(
                                          text: data.wife, size: 14.sp)),
                                  SizedBox(height: 3.h),
                                  Chip(
                                      avatar: const Icon(Icons.moving_outlined),
                                      label: TextWidget(
                                          text: data.move, size: 14.sp)),
                                ],
                              ),
                            ),
                            Flexible(
                                flex: 6,
                                child: Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 30.h,
                                      color: Colors.black26,
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ),
          Positioned(
              bottom: 20,
              right: 0,
              left: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ArrowButton(
                    iconData: Icons.arrow_back_ios,
                    press: () {
                      if (currentIndex > 0) {
                        setState(() {
                          currentIndex--;
                          pageCtrl.animateToPage(
                            currentIndex,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.fastLinearToSlowEaseIn,
                          );
                        });
                      }
                    },
                  ),
                  SizedBox(width: 1.w),
                  ArrowButton(
                      iconData: Icons.arrow_forward_ios,
                      press: () {
                        if (currentIndex < getList.length - 1) {
                          setState(() {
                            currentIndex++;
                            pageCtrl.animateToPage(
                              currentIndex,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.fastOutSlowIn,
                            );
                          });
                        }
                      }),
                  SizedBox(width: 2.w),
                  SmoothPageIndicator(
                    controller: pageCtrl,
                    count: getList.length,
                    effect: JumpingDotEffect(
                        radius: 10.sp, dotHeight: 1.w, dotWidth: 3.h),
                  ),
                ],
              )),
        ],
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
