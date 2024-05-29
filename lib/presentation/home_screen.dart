import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:light_bottom_navigation_bar/light_bottom_navigation_bar.dart';
import 'package:modernui/presentation/global_screen/home_screen.dart';
import 'package:modernui/presentation/global_screen/profile_screen.dart';
import 'package:modernui/presentation/global_screen/shedule_screen.dart';
import 'package:modernui/presentation/global_screen/statistics_screen.dart';
import 'package:modernui/shared/colors.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int curIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: LightBottomNavigationBar(
          currentIndex: 0,
          backgroundColor: HexColor('#0f0a01'),
          elevation: 20,
          items: [
            LightBottomNavigationBarItem(
                size: 30,
                unSelectedIcon: CupertinoIcons.home,
                selectedIcon: CupertinoIcons.house_fill,
                splashColor: HexColor(AppColor.barkbuttonColor),
                borderBottomColor: HexColor(AppColor.buttonColor2),
                backgroundShadowColor: HexColor(AppColor.buttonColor),
                selectedIconColor: HexColor(AppColor.buttonColor2),
                unSelectedIconColor: Colors.white.withOpacity(0.7)
            ),
            LightBottomNavigationBarItem(
                size: 30,
                unSelectedIcon: CupertinoIcons.cart,
                selectedIcon: CupertinoIcons.cart_fill,
                splashColor: HexColor(AppColor.barkbuttonColor),
                borderBottomColor: HexColor(AppColor.buttonColor2),
                backgroundShadowColor: HexColor(AppColor.buttonColor),
                selectedIconColor: HexColor(AppColor.buttonColor2),
                unSelectedIconColor: Colors.white
            ),
            LightBottomNavigationBarItem(
                size: 30,
                unSelectedIcon: CupertinoIcons.cube_box,
                selectedIcon: CupertinoIcons.cube_box_fill,
                splashColor: HexColor(AppColor.barkbuttonColor),
                borderBottomColor: HexColor(AppColor.buttonColor2),
                backgroundShadowColor: HexColor(AppColor.buttonColor),
                selectedIconColor: HexColor(AppColor.buttonColor2),
                unSelectedIconColor: Colors.white
            ),
            LightBottomNavigationBarItem(
                size: 30,
                unSelectedIcon: CupertinoIcons.profile_circled,
                selectedIcon: CupertinoIcons.person_crop_circle_fill,
                splashColor: HexColor(AppColor.barkbuttonColor),
                borderBottomColor: HexColor(AppColor.buttonColor2),
                backgroundShadowColor: HexColor(AppColor.buttonColor),
                selectedIconColor: HexColor(AppColor.buttonColor2),
                unSelectedIconColor: Colors.white
            ),
          ],
          onSelected: (index){
            curIndex = index;
            setState(() {});
            print('tab $index');
          },
        ),
      body: Container(
          width: Get.width,
          height: Get.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    HexColor(AppColor.background),
                    // HexColor(AppColor.background),
                    HexColor('#0B0A0C')
                  ]
              )
          ),
          child: scr(index: curIndex))
    );
  }

  Widget scr ({required int index}){
    if (index==0){
      return HomeScreenPage();
    }else if (index==1){
      return const StatisticsScreen();
    }else if (index==2){
      return const TimerScreenPage();
    }else {
      return const ProfileScreenPage();
    }
  }
}
