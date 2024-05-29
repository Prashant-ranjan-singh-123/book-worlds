import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:modernui/shared/colors.dart';
import 'package:modernui/shared/common_widget.dart';

class ExpandViewListItem extends StatelessWidget {
  final String image;
  final String heading;
  final String subtitle;
  final String discription;
  final String username;
  final String name;
  final String authImage;
  final String link;
  final int price;

  ExpandViewListItem(
      {super.key,
      required this.image,
      required this.heading,
      required this.subtitle,
      required this.discription,
      required this.username,
      required this.name,
      required this.price,
      required this.authImage,
      required this.link
      });

  @override
  Widget build(BuildContext context) {
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
          children: [
            SizedBox(
              width: double.infinity,
              height: Get.height * 0.46,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ).animate().fadeIn(duration: 2830.ms, curve: Curves.easeInOutSine),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AutoSizeText(
                          heading,
                          maxLines: 1,
                          style: const TextStyle(
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w800,
                            fontSize: 30,
                          ),
                        ).animate().fadeIn(delay: 500.ms, duration: 10.ms).slideY(delay: 480.ms, duration: 500.ms, curve: Curves.decelerate),
                        CommonWidget.threeFriends().animate().fadeIn(delay: 500.ms, duration: 10.ms).slideY(delay: 480.ms, duration: 500.ms, curve: Curves.decelerate),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 3),
                        child: AutoSizeText(
                          subtitle,
                          maxLines: 1,
                          style: const TextStyle(
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w800,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ).animate().fadeIn(delay: 850.ms, duration: 10.ms).slideY(delay: 830.ms, duration: 500.ms, curve: Curves.decelerate),
                    const SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        physics:
                            const BouncingScrollPhysics(), // Change to ClampingScrollPhysics() if preferred
                        scrollDirection: Axis.vertical,
                        child: Text(
                          discription,
                          style: const TextStyle(
                              fontSize:
                                  16.0), // Adjust text style as needed
                        ).animate().fadeIn(delay: 1150.ms, duration: 10.ms).fadeIn(delay: 1130.ms, duration: 800.ms, curve: Curves.decelerate),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      authImage,
                                    ),
                                  ),
                                ).animate().fadeIn(delay: 1650.ms, duration: 10.ms).slideY(delay: 1630.ms, duration: 800.ms, curve: Curves.decelerate),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    AutoSizeText(
                                      name,
                                      maxLines: 1,
                                      style: const TextStyle(
                                        fontFamily: 'Oswald',
                                        fontWeight: FontWeight.w800,
                                        fontSize: 20,
                                      ),
                                    ).animate().fadeIn(delay: 1650.ms, duration: 10.ms).slideY(delay: 1630.ms, duration: 800.ms, curve: Curves.decelerate),
                                    Opacity(
                                      opacity: 0.5,
                                      child: AutoSizeText(
                                        username,
                                        maxLines: 1,
                                        style: const TextStyle(
                                          fontFamily: 'Oswald',
                                          fontWeight: FontWeight.w800,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ).animate().fadeIn(delay: 1650.ms, duration: 10.ms).slideY(delay: 1630.ms, duration: 800.ms, curve: Curves.decelerate),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.add,
                                ),
                                Text(
                                  'Add Friend',
                                )
                              ],
                            ),
                          ).animate().fadeIn(delay: 1650.ms, duration: 10.ms).slideY(delay: 1630.ms, duration: 800.ms, curve: Curves.decelerate)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: SizedBox(
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Opacity(
                                  opacity: 0.5,
                                  child: AutoSizeText(
                                    'Bid Price',
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontFamily: 'Oswald',
                                      fontWeight: FontWeight.w800,
                                      fontSize: 10,
                                    ),
                                  ),
                                ).animate().fadeIn(delay: 2050.ms, duration: 10.ms).slideY(delay: 2030.ms, duration: 800.ms, curve: Curves.decelerate),
                                SizedBox(
                                  width: Get.width - 40,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '\$ $price',
                                        style: const TextStyle(
                                          fontFamily: 'Oswald',
                                          fontWeight: FontWeight.w800,
                                          fontSize: 30,
                                        ),
                                      ).animate().fadeIn(delay: 2050.ms, duration: 10.ms).slideY(delay: 2030.ms, duration: 800.ms, curve: Curves.decelerate),
                                      SizedBox(
                                        width:
                                            200, // Adjust this value as needed
                                        height: 40,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            CommonWidget.openAmazon(link);
                                          },
                                          style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            // backgroundColor: HexColor(AppColor.buttonColor2),
                                            backgroundColor:
                                                HexColor('#E6CFB3'),
                                          ),
                                          child: Text(
                                            'Buy Now',
                                            style: TextStyle(
                                              fontFamily: 'Oswald',
                                              fontWeight: FontWeight.w900,
                                              fontSize: 22,
                                              color: HexColor(
                                                  AppColor.background),
                                            ),
                                          ),
                                        ),
                                      ).animate().fadeIn(delay: 2050.ms, duration: 10.ms).slideY(delay: 2030.ms, duration: 800.ms, curve: Curves.decelerate)
                                    ],
                                  ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
