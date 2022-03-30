import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 192, 38, 38),
        body: Center(
          child: Container(
            height: Get.height * 0.5,
            child: Image.asset("assets/images/logo.png"),
          ),
        ),
      ),
    );
  }
}
