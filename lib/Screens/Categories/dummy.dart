import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swapp/Appcolors.dart/Appcolors.dart';
// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

class CategoriesScreen extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  CategoriesScreen({Key? key}) : super(key: key);

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
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
        appBar: PreferredSize(
            child: Container(
              margin: EdgeInsets.only(top: 2),
              height: height * 0.085,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.20), blurRadius: 4),
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
                    Image.asset('assets/search.png')
                  ],
                ),
              ),
            ),
            preferredSize: Size.fromHeight(75)),
        body: Container(
          height: height,
          width: width,
          child: Column(
            children: [
              SizedBox(
                height: height * 0.040,
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.050),
                child: Row(
                  children: [
                    Text(
                      'Recent',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),

              SizedBox(
                height: height * 0.020,
              ),

              // ignore: sized_box_for_whitespace
              Container(
                margin: EdgeInsets.only(right: 10, left: 10),
                // color: Colors.red,
                width: width,
                height: height * 0.16,
                child: ListView.builder(
                  // shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: recentImages.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(8.0),
                      child: Stack(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                              image: AssetImage(recentImages[index]),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: height * 0.065,
                              width: width * 0.398,
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

              SizedBox(
                height: 20,
              ),

              Padding(
                padding: EdgeInsets.only(left: width * 0.050),
                child: Row(
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),

              SizedBox(
                height: height * 0.045,
              ),



              Expanded(
                child: 
                GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 0.86,
                      mainAxisSpacing: 15.5,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Column(
                          children: [
                            Container(
                              height: height * 0.11,
                              width: width * 0.30,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                    colors: [
                                      AppColors.linearCian,
                                      AppColors.linearBlue,
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  )),
                              child: SvgPicture.asset(
                                logos[index],
                                fit: BoxFit.none,
                              ),
                            ),

                            SliverToBoxAdapter(
                              child: SizedBox(
                                height: 13,
                              ),
                            ),

                            SliverToBoxAdapter(child: Text(text[index]))
                          ],
                        ),
                      );
                    }),
              ),



              SizedBox(
                height: 10,
              ),
              Text('data')
            ],
          ),
        ),
      ),
    );
  }
}
