import 'package:flutter/material.dart';
import 'package:payment_ui/src/utils/color.dart';
import 'package:payment_ui/src/utils/typhograpy.dart';

class CustomChips extends StatelessWidget {
  final TextStyleApp textStyleApp = TextStyleApp();
  final ColorApp colorApp = ColorApp();
  CustomChips({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: colorApp.primaryCol)),
      child: Center(
          child: Text(
        title,
        style: textStyleApp.textXL.copyWith(color: colorApp.textColBlue),
      )),
    );
  }
}
