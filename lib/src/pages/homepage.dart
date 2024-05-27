import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment_ui/src/Component/card_kitties.dart';
import 'package:payment_ui/src/Component/custom_chips.dart';
import 'package:payment_ui/src/Component/custom_tile.dart';
import 'package:payment_ui/src/utils/color.dart';
import 'package:payment_ui/src/utils/typhograpy.dart';
import 'package:payment_ui/src/Component/button_style.dart';
import 'package:solar_icons/solar_icons.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ColorApp colorApp = ColorApp();
  final TextStyleApp textStyleApp = TextStyleApp();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: colorApp.bgCol,
      body: ListView(
        children: [
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(14),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG9Jy5q6ie9vf5NhJeIVRg0Gr6jTrx74d7iy978nL11w&s"))),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          "Hello, Clenzie",
                          overflow: TextOverflow.ellipsis,
                          style: textStyleApp.subHead2.copyWith(
                              color: colorApp.primaryCol,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Ionicons.search),
                      iconSize: 24,
                      color: colorApp.iconColPrimary,
                      focusColor: colorApp.bgCol,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: const Color(0xffF1E4FE),
                          borderRadius: BorderRadius.circular(14)),
                      child: Center(
                        child: Icon(
                          Icons.widgets_rounded,
                          size: 24,
                          color: colorApp.iconColPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    width: 200,
                    height: 175,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: const Color(0xffF1E4FE),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 16.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 6,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Current Balance",
                                  style: textStyleApp.subHead2.copyWith(
                                      letterSpacing: 0,
                                      color: colorApp.textColBlue),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "\$3,877.00",
                                  style: textStyleApp.headLines3.copyWith(
                                      letterSpacing: 0,
                                      color: colorApp.textColBlue),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    "05/26    ••••1747",
                                    overflow: TextOverflow.ellipsis,
                                    style: textStyleApp.textL.copyWith(
                                        letterSpacing: 0,
                                        color: colorApp.textColBlue),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.texture_rounded,
                                      color: colorApp.primaryCol,
                                      size: 24,
                                    ),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    Text.rich(TextSpan(
                                        text: "Kitty",
                                        style: textStyleApp.textL.copyWith(
                                            letterSpacing: 0,
                                            fontWeight: FontWeight.bold,
                                            color: colorApp.textColPurple),
                                        children: [
                                          TextSpan(
                                              text: "pay.io",
                                              style: textStyleApp.textL
                                                  .copyWith(
                                                      letterSpacing: 0,
                                                      color:
                                                          colorApp.secondaryCol,
                                                      fontWeight:
                                                          FontWeight.bold))
                                        ])),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 200,
                    height: 175,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: const Color(0xffF1E4FE),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.add_rounded,
                        size: 24,
                        color: colorApp.iconColSecondary,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: Btn(
                      name: "Send",
                      bgColorBtn: colorApp.primaryCol,
                      iconBtn: const Icon(Ionicons.send_sharp)),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Btn(
                      name: "Request",
                      bgColorBtn: colorApp.secondaryCol,
                      iconBtn: const Icon(Ionicons.download)),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Kitties",
                  style: textStyleApp.subHead3.copyWith(
                      letterSpacing: 0,
                      fontWeight: FontWeight.w900,
                      color: colorApp.textColPurple),
                ),
                Text(
                  "see more >",
                  style: textStyleApp.textS
                      .copyWith(letterSpacing: 0, color: colorApp.textColGray),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 110,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return CardKitties();
              },
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Transaction",
                  style: textStyleApp.textXL.copyWith(
                      letterSpacing: 0,
                      fontWeight: FontWeight.bold,
                      color: colorApp.textColPurple),
                ),
                Text(
                  "see more >",
                  style: textStyleApp.textS
                      .copyWith(letterSpacing: 0, color: colorApp.textColGray),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return CustomTile(
                  nameTransaction: "Kittypay TopUp",
                  namePerson: "Clenzie",
                  historyMoney: "+\$900.00");
            },
          )
        ],
      ),
      bottomNavigationBar: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: BottomNavigationBar(
              backgroundColor:
                  Color.fromARGB(255, 244, 244, 244).withOpacity(0.75),
              elevation: 0,
              selectedItemColor: colorApp.primaryCol,
              unselectedItemColor: colorApp.tertiaryCol,
              type: BottomNavigationBarType.fixed,
              showUnselectedLabels: false,
              iconSize: 25,
              showSelectedLabels: false,
              items: [
                BottomNavigationBarItem(
                  label: "home",
                  icon: const Icon(
                    Icons.home_filled,
                  ),
                ),
                BottomNavigationBarItem(
                  label: "Saldo",
                  icon: Icon(Ionicons.wallet),
                ),
                BottomNavigationBarItem(
                  label: "Notification",
                  icon: Icon(Icons.notifications_active_rounded),
                ),
                BottomNavigationBarItem(
                  label: "Profil",
                  icon: Icon(Ionicons.person_circle_sharp),
                ),
              ]),
        ),
      ),
    );
  }
}
