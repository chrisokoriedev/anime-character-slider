import 'package:animatedimageslider/const.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SliderTwo extends StatelessWidget {
  const SliderTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 0.2.dp, vertical: 0.1.dp),
        width: double.infinity,
        height: 0.9.dp,
        decoration: const BoxDecoration(
          
            image: DecorationImage(
                fit: BoxFit.cover,
                image: CachedNetworkImageProvider(
                    'https://i.pinimg.com/originals/73/03/85/7303858d8f1ee448bf2d1c35e672461f.gif'))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 0.5.dp,
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
                            size: 10.sp,
                            color: Colors.white,
                          )),
                      SizedBox(width: 5.w),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              minimumSize: Size(10.w, 6.h),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.sp))),
                          onPressed: () {},
                          child: TextWidget(
                            text: 'Learn more',
                            size: 10.sp,
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
                    children: [
                      Chip(
                          avatar: const Icon(Icons.shield_sharp),
                          label: TextWidget(
                              text: 'sssssssssssssssssss', size: 12.sp)),
                      SizedBox(height: 3.h),
                      Chip(
                          avatar: const Icon(Icons.female),
                          label: TextWidget(
                              text: 'sssssssssssssssssss', size: 12.sp)),
                      SizedBox(height: 3.h),
                      Chip(
                          avatar: const Icon(Icons.moving_outlined),
                          label: TextWidget(
                              text: 'sssssssssssssssssss', size: 12.sp)),
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
      ),
    );
  }
}
