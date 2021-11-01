// ignore_for_file: prefer_const_constructors_in_immutables, avoid_unnecessary_containers
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:swapp/Appcolors.dart/Appcolors.dart';
import 'package:swapp/Screens/Categories/CategoryPage.dart';
// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

class SignupScreen extends StatefulWidget {
  SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.3,
            ),
            Image.asset('assets/swapblue.png'),
            SizedBox(
              height: height * 0.030,
            ),
            Text('Sign Up to account'),
            SizedBox(
              height: height * 0.020,
            ),
            Container(
              height: height * 0.062,
              width: width * 0.60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.fbcolor),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 6),
                    height: height * 0.070,
                    width: width * 0.10,
                    child: SvgPicture.asset('assets/fbIcon.svg'),
                  ),
                  SizedBox(
                    width: width * 0.020,
                  ),
                  Text(
                    'connect to a Facebook',
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: height * 0.062,
              width: width * 0.60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.lightContainer),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 6),
                    height: height * 0.070,
                    width: width * 0.10,
                    child: Image.asset(
                      'assets/gmailicon.png',
                    ),
                  ),
                  SizedBox(
                    width: width * 0.020,
                  ),
                  Text(
                    'connect to a Google',
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.030,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => CategoriesScreen());
              },
              child: Container(
                height: height * 0.052,
                width: width * 0.32,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        AppColors.linearCian,
                        AppColors.linearBlue,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    )),
                child: Center(
                    child: Text(
                  'Sign Up',
                  style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
