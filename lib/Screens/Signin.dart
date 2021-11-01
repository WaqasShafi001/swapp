// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapp/Appcolors.dart/Appcolors.dart';
import 'package:swapp/Screens/Signup.dart';

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
              Text('Please select your avatar'),
              SizedBox(
                height: height * 0.020,
              ),
              Container(
                height: height * 0.12,
                width: width,
                color: AppColors.lightContainer,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/profileman.png'),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset('assets/profilefemal.png'),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.020,
              ),
              Container(
                height: height * 0.060,
                width: width * 0.60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          // offset: Offset(4, 4),
                          color: Colors.black.withOpacity(0.20),
                          blurRadius: 4),
                    ]),
                child: TextFormField(
                 // textAlign: TextAlign.center,
                  autofocus: true,
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
                height: height*0.025,
              ),
              GestureDetector(
                onTap: (){
                  Get.to(SignupScreen());
                },
                child: 
                Container(
                  height: height*0.055,
                  width: width*0.42,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.linearBlue,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 4
                      ),
                      
                    ]
                  ),
                  child: Center(child: Text('Save and Sign Up',
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
