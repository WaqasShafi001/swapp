import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:swapp/Appcolors.dart/Appcolors.dart';

import 'SearchScreen.dart';
// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

class HomePage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List recentImages = [
    'assets/use_this_one.jpg',
    'assets/use_this_one.jpg',
    'assets/use_this_one.jpg',
    'assets/use_this_one.jpg',
    'assets/use_this_one.jpg',
    'assets/use_this_one.jpg',
  ];

  List logos = [
    'assets/iphonelogo.svg',
    'assets/download.svg',
    'assets/imagelogo.svg',
    'assets/docslogo.svg',
    'assets/videologo.svg',
    'assets/musiclogo.svg',
  ];

  List text = ['Apps', 'Downloads', 'Images', 'Docs', 'Videos', 'Audios'];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          child: Container(
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
                  Image.asset('assets/drawer.png'),
                  Container(
                    height: height * 0.060,
                    child: Image.asset('assets/swapblue.png'),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(SearchScreen());
                    },
                    child: Image.asset('assets/search.png'),
                  )
                ],
              ),
            ),
          ),
          preferredSize: Size.fromHeight(75),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: height * 0.035,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.050),
                child: Row(
                  children: [
                    Text(
                      'Recent',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: height * 0.008,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                // color: Colors.red,
                width: width,
                height: height * 0.16,
                child: ListView.builder(
                  // shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: recentImages.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: width * 0.3,
                      margin: EdgeInsets.all(8.0),
                      child: Stack(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                              image: AssetImage(
                                recentImages[index],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: height * 0.055,
                              width: width * 0.3,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: width * 0.035, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Album 1',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    ),
                                    Text(
                                      'Images',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 11),
                                    )
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(12),
                                    bottomRight: Radius.circular(12),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.85))
                                  ]),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: height * 0.03,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(left: width * 0.050),
                child: Row(
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: height * 0.04,
              ),
            ),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 0),
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return Column(
                  children: [
                    Container(
                      height: height * 0.095,
                      width: width * 0.22,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
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
                              offset: Offset(3, 3),
                              color: Colors.black.withOpacity(0.20),
                              blurRadius: 15,
                              spreadRadius: 2),
                        ],
                      ),
                      child: SvgPicture.asset(
                        logos[index],
                        fit: BoxFit.none,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(text[index])
                  ],
                );
              }, childCount: 6),
            ),
            SliverToBoxAdapter(
                child: SizedBox(
              height: height * 0.005,
            )),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(left: width * 0.050),
                child: Row(
                  children: [
                    Text(
                      'Device Storage',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: height * 0.025,
              ),
            ),
            SliverToBoxAdapter(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.050),
              child: Container(
                height: height * 0.085,
                width: width * 0.47,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(5, 5),
                        color: Colors.black.withOpacity(0.20),
                        blurRadius: 8,
                        spreadRadius: 1),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.040),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/checkspace.png',
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Available 28.52 GB',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w900),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Total 125 GB',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )),
            SliverToBoxAdapter(
                child: SizedBox(
              height: height * 0.025,
            )),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(left: width * 0.050),
                child: Row(
                  children: [
                    Text(
                      'Shared Data Info',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: height * 0.025,
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: height * 0.080,
                    width: width * 0.40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sent',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          '0B',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w900),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(5, 5),
                            color: Colors.black.withOpacity(0.20),
                            blurRadius: 8,
                            spreadRadius: 1),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: height * 0.080,
                    width: width * 0.40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Recieved',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          '0B',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w900),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(5, 5),
                            color: Colors.black.withOpacity(0.20),
                            blurRadius: 8,
                            spreadRadius: 1),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: height * 0.050,
              ),
            )
          ],
        ),
      ),
    );
  }
}
