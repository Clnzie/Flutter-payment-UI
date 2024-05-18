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
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Hello, Clenzie",
                      overflow: TextOverflow.ellipsis,
                      style: textStyleApp.subHead2.copyWith(
                          color: colorApp.textColBlue,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w900),
                    )
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Ionicons.search),
                      iconSize: 24,
                      color: colorApp.primaryCol,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: colorApp.textColGray,
                          borderRadius: BorderRadius.circular(12)),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
