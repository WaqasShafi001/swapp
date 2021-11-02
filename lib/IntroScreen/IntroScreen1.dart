// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapp/IntroScreen/IntroScreenTwo.dart';
import 'package:swapp/widgets/gradientContainer.dart';
// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

class IntroScreenOne extends StatefulWidget {
  IntroScreenOne({Key? key}) : super(key: key);

  @override
  _IntroScreenOneState createState() => _IntroScreenOneState();
}

class _IntroScreenOneState extends State<IntroScreenOne> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return FadeIn(
      duration: Duration(
        seconds: 1
      ),
      child: GradientContainer(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              bottom: 0,
              child: Container(
                height: height * 0.4,
                width: width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    'assets/cloud.png',
                  ),
                  fit: BoxFit.scaleDown,
                )),
              ),
            ),
            Positioned(
              top: 25,
              child: Column(
                children: [
                  Image.asset(
                    'assets/Groupscr1.png',
                    alignment: Alignment.topCenter,
                    width: width * 0.85,
                    height: height * 0.6,
                  ),
                  SizedBox(
                    height: height * 0.2,
                  ),
                  Text(
                    'File Sharing for All',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: height * 0.010,
                  ),
                  Text(
                    'Transfar files online and offline',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(
                    height: height * 0.080,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
