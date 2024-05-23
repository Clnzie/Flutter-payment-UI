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
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: const Color(0xffF1E4FE)),
                child: Center(
                  child: Icon(
                    Icons.texture_rounded,
                    color: colorApp.primaryCol,
                    size: 40,
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(nameTransaction,
                          style: textStyleApp.subHead2.copyWith(
                              letterSpacing: 0,
                              color: colorApp.textColPurple,
                              fontWeight: FontWeight.w600)),
                    ),
                    Text(
                      namePerson,
                      style: textStyleApp.textS
                          .copyWith(color: colorApp.textColGray),
                    )
                  ],
                ),
              ),
            ],
          ),
          Text(
            historyMoney,
            style: textStyleApp.subHead3.copyWith(
                color: colorApp.textColBlue, fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
