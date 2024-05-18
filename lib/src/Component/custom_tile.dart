import 'package:flutter/material.dart';
import 'package:payment_ui/src/utils/color.dart';
import 'package:payment_ui/src/utils/typhograpy.dart';

class CustomTile extends StatelessWidget {
  final TextStyleApp textStyleApp = TextStyleApp();
  final ColorApp colorApp = ColorApp();
  CustomTile(
      {super.key,
      required this.nameTransaction,
      required this.namePerson,
      required this.historyMoney});
  final String nameTransaction, namePerson, historyMoney;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), color: Colors.red),
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(nameTransaction,
                    style: textStyleApp.subHead2.copyWith(
                        letterSpacing: 0,
                        color: colorApp.textColPurple,
                        fontWeight: FontWeight.w900)),
                Text(
                  namePerson,
                  style:
                      textStyleApp.textS.copyWith(color: colorApp.textColGray),
                )
              ],
            ),
          ],
        ),
        Text(
          historyMoney,
          style: textStyleApp.subHead3.copyWith(
              color: colorApp.textColBlue, fontWeight: FontWeight.w900),
        )
      ],
    );
  }
}
