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
    return GestureDetector(
      onTap: () {
        Get.to(() =>IntroScreenTwoPage());
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
          top: height * 0.08,
            child: Column(
              children: [
                Image.asset(
                  'assets/Groupscr1.png',
                  alignment: Alignment.topCenter,
                  width: width*0.85,
                  height: height*0.5,
            
                ),
                SizedBox(
                  height: height*0.24,
                ),
                Text('File Sharing for All',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold),),
                SizedBox(
                  height: height*0.010,
                ),
                Text('Transfar files online and offline',style: TextStyle(color: Colors.white,fontSize: 12),),
                SizedBox(
                  height: height*0.080,
                ),
                Row(
                  children: [
                    CircleAvatar(
                    minRadius: 6.0,
                    backgroundColor: Colors.white,
                    
                    ),
                    SizedBox(
                      width: width*0.020,
                    ),
                    Container(
                      height: height*0.015,
                      width: width*0.030,
                      decoration:BoxDecoration(
                        border: Border.all(
                          color: Colors.white
                        ),
                        borderRadius: BorderRadius.circular(20),
                        
                      )
                    )
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
