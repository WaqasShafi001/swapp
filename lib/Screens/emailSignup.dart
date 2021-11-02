// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapp/Appcolors.dart/Appcolors.dart';
import 'package:swapp/Screens/socialSignup.dart';

// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

class SignInScreen extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          child: Column(
            children: [
              SizedBox(
                height: height * 0.2,
              ),
              Image.asset('assets/swapblue.png'),
              SizedBox(
                height: height * 0.010,
              ),
              Center(child: Image.asset('assets/profile.png')),
              Text('Please select your avatar', style: TextStyle(fontSize: 15)),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                height: height * 0.14,
                width: width,
                color: AppColors.lightGreyColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/profileman.png'),
                    SizedBox(
                      width: 30,
                    ),
                    Image.asset('assets/profilefemal.png'),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.025,
              ),
              Container(
                height: height * 0.060,
                width: width * 0.65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.20),
                        blurRadius: 15,
                        spreadRadius: 2),
                  ],
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Type username here',
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: EdgeInsets.only(left: 10, top: 15),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
              SizedBox(
                height: height * 0.028,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(SignupScreen());
                },
                child: Container(
                  height: height * 0.06,
                  width: width * 0.42,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        AppColors.cianColor,
                        AppColors.purpleColor,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(5, 5),
                          color: Colors.black.withOpacity(0.20),
                          blurRadius: 15,
                          spreadRadius: 2),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'Save and Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
