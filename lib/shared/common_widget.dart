import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:android_intent_plus/android_intent.dart';

import 'assets.dart';

class CommonWidget {
  static Widget threeFriends() {
      return SizedBox(
        width: 60,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: CircleAvatar(
                child: Image.asset(AppAssets.p1),
                radius: 14,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                child: Image.asset(AppAssets.p2),
                radius: 14,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: CircleAvatar(
                child: Image.asset(AppAssets.p3),
                radius: 14,
              ),
            ),
          ],
        ),
      );
    }

  static void openAmazon(String url) async {
    Future<bool> isAmazonInstalled() async {
      Uri url = Uri.parse('amazon://');
      if (await canLaunchUrl(url)) {
        return true;
      } else {
        return false;
      }
    }
    String dt = url;
    bool isInstalled = await isAmazonInstalled();
    if (isInstalled != false) {
      AndroidIntent intent = AndroidIntent(
          action: 'action_view',
          data: dt
      );
      await intent.launch();
    }
    else {
      Uri url = Uri.parse(dt);
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    }
  }
}
