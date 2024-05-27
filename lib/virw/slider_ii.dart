import 'package:animatedimageslider/const.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SliderTwo extends StatelessWidget {
  const SliderTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.2.dp, vertical: 0.1.dp),
        child: Column(
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
                  SizedBox(height: 20.h),
                  TextWidget(text: 'Naruto', size: 20.sp),
                  TextWidget(
                      text:
                          'A spirited ninja with a dream of becoming the Hokage, Naruto harnesses the powe'
                          '  r of the Nine-Tails fox demon sealed within him.',
                      size: 15.sp,
                      letterSpacing: 1.4),
                  SizedBox(height: 5.h),
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
