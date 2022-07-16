import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookListTile extends StatefulWidget {
  final String pictureLocation;
  final String title;
  final String author;
  final int indexer;

  const BookListTile({
    required this.pictureLocation,
    Key? key,
    required this.title,
    required this.author,
    required this.indexer,
  }) : super(key: key);

  @override
  State<BookListTile> createState() => _BookListTileState();
}

class _BookListTileState extends State<BookListTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0XFF252D3C),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: SizedBox(
        width: double.infinity,
        height: 100,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(widget.pictureLocation),
            ),
            const SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.title,
                  style: GoogleFonts.playfairDisplay(
                      color: Colors.white, fontSize: 20),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star_rate_rounded,
                      color: Colors.red,
                    ),
                    const Icon(
                      Icons.star_rate_rounded,
                      color: Colors.red,
                    ),
                    const Icon(
                      Icons.star_rate_rounded,
                      color: Colors.red,
                    ),
                    const SizedBox(width: 20),
                    Text(
                      'by ${widget.author}',
                      style: GoogleFonts.playfairDisplay(
                          color: Colors.white, fontSize: 16),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
