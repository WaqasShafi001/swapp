// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapp/Appcolors.dart/Appcolors.dart';
import 'package:swapp/IntroScreen/IntroScreen1.dart';
import 'package:swapp/IntroScreen/IntroScreenTwo.dart';
import 'package:swapp/Screens/emailSignup.dart';
import 'package:swapp/widgets/gradientContainer.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  int currentIndex = 0;
  List listdot = [
    1,
    2,
  ];
  PageController pageController = PageController();
  List<Widget> listOfWidget = [IntroScreenOne(), IntroScreenTwoPage()];
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GradientContainer(
        child: Stack(
          children: [
            PageView.builder(
              itemBuilder: (c, index) => listOfWidget[index],
              controller: pageController,
              onPageChanged: (value) {
                
                setState(() {
                  currentIndex = value;
                });
                print(currentIndex);
              },
              itemCount: listOfWidget.length,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: height * 0.090,
                width: width,
                padding: EdgeInsets.symmetric(horizontal: width * 0.045),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: listdot.map((e) {
                        int index = listdot.indexOf(e);
                        return currentIndex == index
                            ? Container(
                                height: height * 0.014,
                                width: width * 0.025,
                                margin: EdgeInsets.only(right: 5),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                              )
                            : Container(
                                height: height * 0.012,
                                width: width * 0.025,
                                margin: EdgeInsets.only(right: 5),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(20),
                                ));
                      }).toList(),
                    ),
                    // InkWell(
                    //   splashColor: AppColors.lightContainer,
                    //   onTap: () {
                    //     if (currentIndex != 2) {
                    //       setState(() {
                    //         currentIndex = currentIndex + 1;
                    //       });
                    //       pageController.nextPage(
                    //           duration: Duration(milliseconds: 700),
                    //           curve: Curves.easeIn);
                    //     } else {
                    //       Get.offAll(SignInScreen());
                    //     }
                    //   },
                    //   child: Align(
                    //     child: Container(
                    //       height: height * 0.06,
                    //       width: width * 0.2,
                    //       margin: EdgeInsets.only(
                    //           top: 0, left: 0, right: 20, bottom: 10),
                    //       decoration: BoxDecoration(
                    //         color: AppColors.lightContainer,
                    //         borderRadius:
                    //             BorderRadius.all(Radius.elliptical(130, 80)),
                    //       ),
                    //       child: Center(
                    //         child: Text(
                    //           'Next',
                    //           style: TextStyle(
                    //             color: AppColors.linearBlue,
                    //             letterSpacing: 1,
                    //             fontWeight: FontWeight.bold,
                    //             fontSize: 20,
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // )
                  ],
                ),
                decoration: BoxDecoration(color: Colors.transparent),
              ),
            ),
            // Positioned(
            //   top: height * 0.06,
            //   right: width * 0.07,
            //   child: InkWell(
            //     onTap: () => Get.to(SignInScreen()),
            //     child: Material(
            //       color: Colors.transparent,
            //       child: Text('Skip', style: AppTextStyles.smallTitle),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
