import 'package:ebook_ui/components/first_row.dart';
import 'package:ebook_ui/components/second_row.dart';
import 'package:ebook_ui/components/sixth_row.dart';
import 'package:ebook_ui/components/third_row.dart';
import 'package:flutter/material.dart';

import 'components/fourth_row.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFF252D3C),
      backgroundColor: const Color(0xFF0A0D1E),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                FirstRow(),
                SizedBox(height: 15),
                SecondRow(),
                SizedBox(height: 15),
                ThirdRow(),
                SizedBox(height: 4),
                FourthRow(),
                SizedBox(height: 8),
                SixthRow()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
