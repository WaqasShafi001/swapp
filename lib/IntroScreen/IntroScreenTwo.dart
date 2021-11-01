import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:swapp/Screens/Signin.dart';
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
    return GestureDetector(
      onTap: () {
         Get.to(() =>SignInScreen());
      },
      child: GradientContainer(
          child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: height * 0.4,
                  width: width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(
                      'assets/cloud.png',
                    ),
                  )),
                ),
              ),
            ],
          ),
          Positioned(
            top: height * 0.02,
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: width*0.25),
                  child: Center(
                    child: Container(
                      height: height * 0.6,
                      width: width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/Groupscr2.png',

                          ),
                          alignment: Alignment.center,
                          fit: BoxFit.fitWidth,

                        ),
                        
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.20,
                ),
                Text(
                  'All in one File Sharing Platform',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height * 0.010,
                ),
                Text(
                  'Transfar files online and offline',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                SizedBox(
                  height: height * 0.080,
                ),
                Row(
                  children: [

                    Container(
                        height: height * 0.015,
                        width: width * 0.030,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                        )),
                        SizedBox(
                      width: width * 0.020,
                    ),
                        CircleAvatar(
                      minRadius: 6.0,
                      backgroundColor: Colors.white,
                    ),
                    
                  ],
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
