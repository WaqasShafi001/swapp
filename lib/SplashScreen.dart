// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:swapp/IntroScreen/IntroScreen1.dart';
import 'package:swapp/widgets/gradientContainer.dart';
import 'package:get/get.dart';
// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

class SplashScreenPage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2),
    () =>
    Get.to(IntroScreenOne()));
     
  }

  @override
  Widget build(BuildContext context) {
    return GradientContainer(child: Image.asset('assets/swap.png'));
  }
}
