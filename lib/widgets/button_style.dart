import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:payment_ui/utils/color.dart';
import 'package:payment_ui/utils/typhograpy.dart';
import 'package:google_fonts/google_fonts.dart';

class Btn extends StatelessWidget {
  const Btn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        color: primaryCol,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
                color: quartiaryCol, borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Icon(
                Ionicons.send,
                color: tertiaryCol,
                size: 18,
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            "Send",
            style: GoogleFonts.poppins(
                fontSize: 10,
                fontWeight: FontWeight.normal,
                letterSpacing: 0.8),
          )
        ],
      ),
    );
  }
}
