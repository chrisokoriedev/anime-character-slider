import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'virw/slider_ii.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
          theme: ThemeData.dark(),
          debugShowCheckedModeBanner: false,
          home: const SliderTwo());
    });
  }
}
