import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/presentation/splash_Screen.dart';
import 'package:hexcolor/hexcolor.dart';

Future<void> main () async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: HexColor('#AE6203'),
          brightness: Brightness.dark,
        ),
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}