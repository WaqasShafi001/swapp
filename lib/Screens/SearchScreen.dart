// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapp/widgets/customChip.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              height: height * 0.075,
              width: width,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.20),
                    blurRadius: 2,
                    offset: Offset(2, 2),
                  ),
                ],
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.050),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        BackButton(
                          color: Colors.black38,
                        ),
                        SizedBox(
                          width: width * 0.01,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black38,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.black38,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        preferredSize: Size.fromHeight(75),
      ),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: height * 0.01),
          Container(
            height: height * 0.11,
            width: width,
            color: Colors.transparent,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.026, vertical: height * 0.01),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CustomChip(
                        icon: Icon(
                          Icons.download,
                        ),
                        title: 'Apps',
                        widthOf: width * 0.19,
                      ),
                      SizedBox(width: width * 0.025),
                      CustomChip(
                        icon: Icon(
                          Icons.download,
                        ),
                        title: 'Downloads',
                        widthOf: width * 0.26,
                      ),
                      SizedBox(width: width * 0.025),
                      CustomChip(
                        icon: Icon(
                          Icons.download,
                        ),
                        title: 'Images',
                        widthOf: width * 0.2,
                      ),
                      SizedBox(width: width * 0.025),
                      CustomChip(
                        icon: Icon(
                          Icons.download,
                        ),
                        title: 'Audios',
                        widthOf: width * 0.22,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomChip(
                        icon: Icon(
                          Icons.download,
                        ),
                        title: 'Vidoes',
                        widthOf: width * 0.22,
                      ),
                      SizedBox(width: width * 0.025),
                      CustomChip(
                        icon: Icon(
                          Icons.download,
                        ),
                        title: 'Docs',
                        widthOf: width * 0.22,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
