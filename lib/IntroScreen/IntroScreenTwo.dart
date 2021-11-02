import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:swapp/Screens/emailSignup.dart';
import 'package:swapp/widgets/gradientContainer.dart';
// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

class IntroScreenTwoPage extends StatefulWidget {
  IntroScreenTwoPage({Key? key}) : super(key: key);

  @override
  _IntroScreenTwoPageState createState() => _IntroScreenTwoPageState();
}

class _IntroScreenTwoPageState extends State<IntroScreenTwoPage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        Get.to(SignInScreen());
      },
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
                    'assets/Groupscr2.png',
                    alignment: Alignment.topCenter,
                    width: width * 0.85,
                    height: height * 0.6,
                  ),
                  SizedBox(
                    height: height * 0.2,
                  ),
                  Text(
                    'All in one File Sharing Platform',
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
