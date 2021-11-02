// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:swapp/Appcolors.dart/Appcolors.dart';
import 'dart:math' as math;

import '../homePage.dart';

class AppBottomNavBar extends StatefulWidget {
  const AppBottomNavBar({Key? key}) : super(key: key);

  @override
  _AppBottomNavBarState createState() => _AppBottomNavBarState();
}

class _AppBottomNavBarState extends State<AppBottomNavBar> {
  PersistentTabController? _controller;
  bool? _hideNavBar;

  void initState() {
    _controller = PersistentTabController(initialIndex: 2);
    super.initState();
  }

  List<Widget> _buildScreens() {
    return [
      Container(
        child: Center(
          child: Text('1st screen'),
        ),
      ),
      Container(
        child: Center(
          child: Text('2nd screen'),
        ),
      ),
      HomePage(),
      Container(
        child: Center(
          child: Text('4th screen'),
        ),
      ),
      Container(
        child: Center(
          child: Text('5th screen'),
        ),
      ),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          'assets/svg/bottom1.svg',
          height: MediaQuery.of(context).size.height * 0.024,
        ),
        activeColorPrimary: AppColors.fbcolor,
        inactiveColorPrimary: AppColors.lightGreyColor,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          'assets/svg/share.svg',
          height: MediaQuery.of(context).size.height * 0.035,
          color: AppColors.lightGreyColor,
        ),
        // title: 'Website',
        activeColorPrimary: AppColors.fbcolor,
        inactiveColorPrimary: AppColors.lightGreyColor,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset('assets/svg/home.svg'),
        activeColorPrimary: AppColors.fbcolor,
        inactiveColorPrimary: AppColors.lightGreyColor,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset('assets/svg/heart.svg'),
        inactiveIcon: Icon(Icons.favorite_border),
        activeColorPrimary: AppColors.fbcolor,
        inactiveColorPrimary: AppColors.lightGreyColor,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset('assets/svg/profileIcon.svg'),
        inactiveIcon: SvgPicture.asset('assets/svg/profileIcon.svg'),
        // title: 'Website',
        activeColorPrimary: AppColors.fbcolor,
        inactiveColorPrimary: AppColors.lightGreyColor,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        stateManagement: false,
        navBarHeight: height * 0.08,
        hideNavigationBarWhenKeyboardShows: true,
        selectedTabScreenContext: (context) {},
        hideNavigationBar: _hideNavBar,
        navBarStyle: NavBarStyle.style6,
        screenTransitionAnimation:
            ScreenTransitionAnimation(animateTabTransition: true),
      ),
    );
  }
}
