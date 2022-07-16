import 'package:ebook_ui/details_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StackOfCard extends StatelessWidget {
  // var index = picturesX.indexOf();
  const StackOfCard({
    // this.cardColour,
    required this.pictureLocation,
    required this.indexer,
    Key? key,
    required this.title,
    required this.author,
    required this.synopsis,
  }) : super(key: key);

  // final Color? cardColour;
  final String pictureLocation;
  final int indexer;
  final String title;
  final String author;
  final String synopsis;

  // get index => picturesX.single;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 168,
      child: Stack(
        // alignment: Alignment.center,
        children: [
          Positioned(
            top: 80,
            child: Card(
              elevation: 10,
              // color: const Color(0XFF303644),
              color: const Color(0XFF252D3C),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                height: 200,
                width: 168,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.star_rate_rounded,
                          color: Colors.red,
                        ),
                        Icon(
                          Icons.star_rate_rounded,
                          color: Colors.red,
                        ),
                        Icon(
                          Icons.star_rate_rounded,
                          color: Colors.red,
                        ),
                        Icon(
                          Icons.star_half_rounded,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    Text(
                      title,
                      style: GoogleFonts.playfairDisplay(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      author,
                      style: GoogleFonts.playfairDisplay(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 16)
                  ],
                ),
              ),
            ),
          ),

          // Positioned(
          //   bottom: 320,
          //   left: 20,
          //   child: Text(
          //     // picturesX[indexer]['title'],
          //     title,
          //     style: GoogleFonts.playfairDisplay(
          //         color: Colors.white, fontSize: 16),
          //   ),
          // ),
          // Positioned(
          //   bottom: 290,
          //   left: 25,
          //   child: Text(
          //     // 'by ${picturesX[indexer]['author']}',
          //     'by $author',
          //     style: GoogleFonts.playfairDisplay(
          //         color: Colors.white, fontSize: 16),
          //   ),
          // ),
          Positioned(
            top: 5,
            left: 17,
            child: Card(
              elevation: 20,
              // color: cardColour,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                height: 180,
                width: 130,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DetailsPage(
                          image: pictureLocation,
                          title: title,
                          author: author,
                          synopsis: synopsis,
                        ),
                      ),
                    );
                  },
                  child: Image.asset(
                    pictureLocation,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
