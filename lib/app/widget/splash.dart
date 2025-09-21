import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFEC2028),
        body: Center(
          child: Container(
            width: Get.width * 0.3,
            height: Get.height * 0.3,
            child: Image.asset("assets/logo/logo-splash.png"),
          ),
        ),
      ),
    );
  }
}
