import 'package:animatedimageslider/const.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../list_of_character.dart';

class SliderTwo extends StatefulWidget {
  const SliderTwo({super.key});

  @override
  State<SliderTwo> createState() => _SliderTwoState();
}

class _SliderTwoState extends State<SliderTwo> {
  int currentIndex = 0;

  final PageController pageCtrl = PageController(initialPage: 0);
  final CarouselController caroCtlr = CarouselController();
  void _onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                controller: pageCtrl,
                itemCount: getList.length,
                onPageChanged: _onPageChanged,
                itemBuilder: (_, index) {
                  final data = getList[index];

                  return Container(
                    width: double.infinity,
                    height: 100.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: CachedNetworkImageProvider(
                                data.backgroundImage))),
                    child: Container(
                      width: double.infinity,
                      height: 100.h,
                      color: Colors.black54,
                      padding: EdgeInsets.symmetric(
                          horizontal: 0.2.dp, vertical: 0.2.dp),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 50.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      FlutterLogo(
                                        size: 20.sp,
                                      ),
                                      const SizedBox(height: 10),
                                      TextWidget(size: 11.sp, text: 'Anime')
                                    ]),
                                SizedBox(height: 5.h),
                                TextWidget(text: data.name, size: 20.sp),
                                TextWidget(
                                    text: data.des,
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
                                                    BorderRadius.circular(
                                                        8.sp))),
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Chip(
                                  avatar: const Icon(Icons.shield_sharp),
                                  label: TextWidget(
                                      text: data.weapon, size: 14.sp)),
                              SizedBox(height: 3.h),
                              Chip(
                                  avatar: const Icon(Icons.female),
                                  label:
                                      TextWidget(text: data.wife, size: 14.sp)),
                              SizedBox(height: 3.h),
                              Chip(
                                  avatar: const Icon(Icons.moving_outlined),
                                  label:
                                      TextWidget(text: data.move, size: 14.sp)),
                            ],
                          ),
                        ],
                      ),
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
                      setState(() {
                        caroCtlr.previousPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.fastOutSlowIn);
                        pageCtrl.previousPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.fastOutSlowIn);
                      });
                    },
                  ),
                  SizedBox(width: 1.w),
                  ArrowButton(
                      iconData: Icons.arrow_forward_ios,
                      press: () {
                        setState(() {
                          caroCtlr.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.fastOutSlowIn);
                          pageCtrl.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.fastOutSlowIn);
                        });
                      }),
                  SizedBox(width: 2.w),
                  SmoothPageIndicator(
                    controller: pageCtrl,
                    count: getList.length,
                    effect: ExpandingDotsEffect(
                        radius: 10.sp, dotHeight: 1.w, dotWidth: 3.h),
                  ),
                ],
              )),
          Positioned(
            bottom: 80,
            right: 0,
            child: SizedBox(
                width: 90.h,
                child: ExpandableCarousel(
                  options: CarouselOptions(
                      height: 60.h,
                      enlargeCenterPage: true,
                      initialPage: currentIndex,
                      controller: caroCtlr,
                      viewportFraction: 0.5,
                      autoPlay: false,
                      autoPlayInterval: const Duration(seconds: 2),
                      floatingIndicator: false,
                      showIndicator: false),
                  items: getList.asMap().entries.map((entry) {
                    final itemIndex = entry.key;
                    final item = entry.value;
                    final isCurrent = itemIndex == currentIndex;
                    return AnimatedContainer(
                        duration: const Duration(milliseconds: 800),
                        curve: Curves.fastOutSlowIn,
                        width: isCurrent ? 20.w : 10.w,
                        height: isCurrent ? 50.h : 45.h,
                        margin: EdgeInsets.symmetric(horizontal: 1.w),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: isCurrent
                                    ? Colors.white
                                    : Colors.transparent,
                                width: 9.sp),
                            borderRadius:
                                BorderRadius.circular(isCurrent ? 10.sp : 0.sp),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: CachedNetworkImageProvider(
                                    item.foregroundImage))));
                  }).toList(),
                )),
          ),
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
