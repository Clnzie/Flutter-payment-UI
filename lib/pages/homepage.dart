import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment_ui/utils/color.dart';
import 'package:payment_ui/utils/typhograpy.dart';
import 'package:payment_ui/widgets/button_style.dart';
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
      body: ListView(
        children: [
          const SizedBox(
            height: 45,
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(12)),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              children: [
                Expanded(
                    child: Btn(
                  name: "Send",
                  bgColorBtn: colorApp.primaryCol,
                  iconBtn: Icon(
                    Ionicons.send_sharp,
                    color: colorApp.tertiaryCol,
                    size: 24,
                  ),
                )),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Btn(
                  name: "Request",
                  bgColorBtn: colorApp.secondaryCol,
                  iconBtn: Icon(
                    SolarIconsBold.download,
                    color: colorApp.tertiaryCol,
                    size: 24,
                  ),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
