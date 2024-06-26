import 'package:animatedimageslider/const.dart';
import 'package:animatedimageslider/list_of_character.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderOne extends StatefulWidget {
  const SliderOne({super.key});

  @override
  State<SliderOne> createState() => _SliderOneState();
}

class _SliderOneState extends State<SliderOne> {
  int currentIndex = 0;
  int start = 200;
  int delay = 200;
  final PageController pageCtrl = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 11,
          child: PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            controller: pageCtrl,
            itemCount: getList.length,
            itemBuilder: (_, index) {
              final data = getList[index];
              return SizedBox(
                height: size.height,
                child: Stack(
                  fit: StackFit.passthrough,
                  children: [
                    Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          width: double.infinity,
                          height: size.height * 0.6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: CachedNetworkImageProvider(
                                      data.backgroundImage))),
                        )),
                    Positioned(
                      left: 0,
                      right: 0,
                      top: size.height * 0.4 + 10,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          FadeIn(
                            delay: Duration(milliseconds: delay + start),
                            child: CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: size.width * 0.2,
                                backgroundImage: CachedNetworkImageProvider(
                                    data.foregroundImage)),
                          ),
                          SizedBox(height: size.height * 0.050),
                          FadeInUp(
                            delay: Duration(milliseconds: delay + 1 * start),
                            child: TextWidget(
                                text: data.name,
                                size: size.width * 0.1,
                                letterSpacing: 2.0),
                          ),
                          SlideInLeft(
                            delay: Duration(milliseconds: delay + 1 * start),
                            child: TextWidget(
                                text: data.serie,
                                size: size.width * 0.050,
                                letterSpacing: 1.8),
                          ),
                          SizedBox(height: size.height * 0.020),
                          SlideInRight(
                            delay: Duration(milliseconds: delay + 1 * start),
                            child: SizedBox(
                              width: size.width * 0.8,
                              child: TextWidget(
                                text: data.des,
                                size: size.width * 0.040,
                                textAlign: TextAlign.center,
                                letterSpacing: 1.6,
                                maxLine: 3,
                              ),
                            ),
                          ),
                          SizedBox(height: size.height * 0.020),
                          FadeInUp(
                            delay: Duration(milliseconds: delay + 2 * start),
                            child: Wrap(
                              spacing: size.width * 0.020,
                              children: [
                                Chip(
                                    avatar: const Icon(Icons.shield_sharp),
                                    label: TextWidget(
                                        text: data.weapon, size: 12)),
                                Chip(
                                    avatar: const Icon(Icons.female),
                                    label:
                                        TextWidget(text: data.wife, size: 12)),
                                Chip(
                                    avatar: const Icon(Icons.moving_outlined),
                                    label:
                                        TextWidget(text: data.move, size: 12)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Flexible(
          flex: 1,
          child: SizedBox(
            width: size.width * 0.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
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
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: size.width * 0.070,
                        )),
                    SmoothPageIndicator(
                      controller: pageCtrl,
                      count: getList.length,
                      effect: JumpingDotEffect(
                          radius: size.width * 0.020,
                          dotHeight: size.height * 0.02,
                          dotWidth: size.width * 0.02),
                    ),
                    GestureDetector(
                        onTap: () {
                          setState(() {
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
                          });
                        },
                        child: Icon(Icons.arrow_forward_ios,
                            size: size.width * 0.070)),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
