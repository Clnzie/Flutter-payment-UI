import 'package:flutter/material.dart';
import 'package:payment_ui/src/utils/color.dart';
import 'package:payment_ui/src/utils/typhograpy.dart';

class CardKitties extends StatelessWidget {
  final ColorApp colorApp = ColorApp();
  final TextStyleApp textStyleApp = TextStyleApp();
  CardKitties({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: 140,
          height: 110,
          decoration: BoxDecoration(
            // color: Colors.red,
            borderRadius: BorderRadius.circular(14),
            image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://kingfoto.com/attachments/shop_images/63.png")),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: 140,
          height: 110,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              gradient: LinearGradient(colors: [
                colorApp.quartiaryCol.withOpacity(0.3),
                colorApp.primaryCol.withOpacity(0.9)
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Clenzie's Kitties",
                  overflow: TextOverflow.ellipsis,
                  style: textStyleApp.textS.copyWith(
                      color: colorApp.textColWhite,
                      fontWeight: FontWeight.normal),
                ),
                Text(
                  "\$170.00",
                  style: textStyleApp.textL.copyWith(
                      color: colorApp.textColWhite,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
