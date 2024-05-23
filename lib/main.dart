import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'const.dart';
import 'list_of_character.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int currentIndex = 0;
  final PageController pageCtrl = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: PageView.builder(
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
                      height: size.height * 0.5,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: CachedNetworkImageProvider(
                                  data.backgroundImage))),
                    )),
                Positioned(
                  left: 0,
                  right: 0,
                  top: size.height * 0.4 + 30,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.blue,
                          radius: size.width * 0.2,
                          backgroundImage:
                              CachedNetworkImageProvider(data.foregroundImage)),
                      SizedBox(height: size.height * 0.050),
                      TextWidget(text: data.name, size: size.width * 0.1),
                      SizedBox(height: size.height * 0.020),
                      TextWidget(
                          text: data.des, size: size.width * 0.040),
                      SizedBox(height: size.height * 0.070),
                      SizedBox(
                        width: size.width * 0.7,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  if (currentIndex > 0) {
                                    setState(() {
                                      currentIndex--;
                                      pageCtrl.animateToPage(
                                        currentIndex,
                                        duration:
                                            const Duration(milliseconds: 300),
                                        curve: Curves.easeInOut,
                                      );
                                    });
                                  }
                                },
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  size: size.width * 0.1,
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
                                          duration:
                                              const Duration(milliseconds: 300),
                                          curve: Curves.easeInOut,
                                        );
                                      });
                                    }
                                  });
                                },
                                child: Icon(Icons.arrow_forward_ios,
                                    size: size.width * 0.1)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      )),
    );
  }
}

class AppCacheString {
  static const splashBgImage = "splashBgImage";
}
