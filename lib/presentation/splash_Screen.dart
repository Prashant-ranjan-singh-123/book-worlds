import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:modernui/shared/assets.dart';
import 'package:modernui/shared/colors.dart';
import 'home_screen.dart';
import 'on_boarding/config_on_boarding_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), (){
      // Get.off(const HomeScreen());
      Get.off(const OnBoardingScreen());
    });
    return Scaffold(
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Card(
                  elevation: 100,
                  shadowColor: HexColor('#E6CFB3'),
                  child: SizedBox(
                      width: 200, height: 200, 
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                          child: Image.asset(AppAssets.icon_only_logo))).animate(),
                ).animate().fadeIn(duration: 500.ms)
                    .fadeOut(delay: 2000.ms, duration: 600.ms),
              ),
              const SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: AutoSizeText('Books World',
                  maxLines: 1,
                  style: TextStyle(
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.w800,
                      fontSize: 40,
                      color: HexColor(AppColor.textColorshade1)),
                ).animate()
                    .animate().fadeIn(duration: 500.ms).fadeOut(delay: 2000.ms, duration: 600.ms),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: AutoSizeText('----Wonders Of Books----',
                  maxLines: 1,
                  style: TextStyle(
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                      color: HexColor(AppColor.textColorshade2)),
                ).animate()
                    .animate().fadeIn(duration: 500.ms).fadeOut(delay: 2000.ms, duration: 600.ms),
              ),
            ],
          ),
      )
    );
  }
}
