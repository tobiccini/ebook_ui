import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondRow extends StatelessWidget {
  const SecondRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Top Books',
          style: GoogleFonts.playfairDisplay(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        const Spacer(),
        Text(
          'See All',
          style: GoogleFonts.playfairDisplay(
            color: Colors.white70,
          ),
        ),
        const SizedBox(width: 4),
        Container(
          height: 38,
          decoration: const BoxDecoration(
            color: Colors.black54,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.white70,
            ),
          ),
        )
      ],
    );
  }
}
