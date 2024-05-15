import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:payment_ui/src/utils/color.dart';
import 'package:payment_ui/src/utils/typhograpy.dart';

class Btn extends StatelessWidget {
  final ColorApp colorApp = ColorApp();
  final TextStyleApp textStyleApp = TextStyleApp();
  Btn(
      {super.key,
      required this.name,
      required this.bgColorBtn,
      required this.iconBtn});
  final String name;
  final Color bgColorBtn;
  final Icon iconBtn;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        color: bgColorBtn,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
                color: colorApp.quartiaryCol,
                borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: iconBtn,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Text(
              name,
              style: textStyleApp.subHead3.copyWith(
                  color: colorApp.textColWhite, fontWeight: FontWeight.normal),
            ),
          )
        ],
      ),
    );
  }
}
