import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../shared/colors.dart';

class ProfileScreenPage extends StatelessWidget {
  const ProfileScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            CupertinoIcons.profile_circled,
            size: 150,
            color: HexColor('#E6CFB3').withOpacity(0.4),
          )
              .animate()
              .animate()
              .scale(duration: 450.ms, curve: Curves.decelerate),
          const SizedBox(
            height: 20,
          ),
          Text('Profile',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w800,
                      color: HexColor('#E6CFB3').withOpacity(0.4),
                      fontSize: 23,
                  )
          )
              .animate()
              .animate()
              .scale(duration: 450.ms, curve: Curves.decelerate)
        ],
      ),
    );
  }
}
