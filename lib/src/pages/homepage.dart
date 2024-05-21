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
      backgroundColor: colorApp.bgCol,
      body: ListView(
        children: [
          const SizedBox(
            height: 45,
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
                            borderRadius: BorderRadius.circular(12),
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
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: const Color(0xffF1E4FE),
                          borderRadius: BorderRadius.circular(12)),
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
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xffF1E4FE),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "05/26    ••••1747",
                                style: textStyleApp.textL.copyWith(
                                    letterSpacing: 0,
                                    color: colorApp.textColBlue),
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
                                            style: textStyleApp.textL.copyWith(
                                                letterSpacing: 0,
                                                color: colorApp.secondaryCol,
                                                fontWeight: FontWeight.bold))
                                      ])),
                                ],
                              )
                            ],
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
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
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
          Row(
            children: [
              Btn(
                  name: "Send",
                  bgColorBtn: colorApp.secondaryCol,
                  iconBtn: Icon(Ionicons.send_sharp)),
            ],
          )
        ],
      ),
    );
  }
}
