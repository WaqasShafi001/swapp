import 'package:flutter/material.dart';
import 'package:swapp/Appcolors.dart/Appcolors.dart';
// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables


class GradientContainer extends StatelessWidget {
  final Widget? child;
  const GradientContainer({ Key? key, this.child }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Container(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            decoration: 
            BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.cianColor,
                  AppColors.purpleColor,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                
              ),
            ),
            child: Center(
              child: child,
              
            )),
      ),
    );
  }
}