import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FourthRow extends StatelessWidget {
  const FourthRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Explore',
            style:
                GoogleFonts.playfairDisplay(color: Colors.white, fontSize: 16),
          ),
          Text(
            'See All',
            style: GoogleFonts.playfairDisplay(color: Colors.white38),
          ),
        ],
      ),
    );
  }
}
