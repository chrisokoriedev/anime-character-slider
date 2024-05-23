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
                const Text("Hello"),
                const Text("Hello"),
                SizedBox(
                  width: size.width * 0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back_ios),
                      Text('Name'),
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
