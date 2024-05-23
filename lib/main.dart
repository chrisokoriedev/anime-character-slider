import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Stack(
        fit: StackFit.passthrough,
        children: [
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                  width: double.infinity,
                  height: size.height * 0.5,
                  color: const Color(0xFF222222))),
          Positioned(
            left: 0,
            right: 0,
            top: size.height * 0.4 + 30,
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: size.width * 0.2,
                ),
                SizedBox(height: size.height * 0.050),
                TextWidget(text: 'Name', size: size.width * 0.1),
                SizedBox(height: size.height * 0.020),
                TextWidget(text: 'Name', size: size.width * 0.1),
                SizedBox(height: size.height * 0.050),
                SizedBox(
                  width: size.width * 0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back_ios),
                      TextWidget(text: 'Name', size: size.width * 0.050),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.size,
    required this.text,
    this.color,
    this.fontWeight,
    this.letterSpacing,
  });

  final double? size;
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? letterSpacing;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing),
    );
  }
}
