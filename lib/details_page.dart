import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({
    Key? key,
    required this.image,
    required this.title,
    required this.author,
    required this.synopsis,
  }) : super(key: key);
  final String image;
  final String title;
  final String author;
  final String synopsis;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    double containerHeight = MediaQuery.of(context).size.height;
    double containerWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: SafeArea(
        // child: Container(
        // height: containerHeight,
        // width: containerWidth,
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(20),
        //   gradient: const LinearGradient(
        //     begin: Alignment.topLeft,
        //     end: Alignment.bottomRight,
        //     colors: [Color(0XFF9B3133), Colors.black],
        //     // radius: 0.75,
        //     // focal: Alignment(0.7, -0.7),
        //     // tileMode: TileMode.clamp,
        //   ),
        // ),
        child: Scaffold(
          body: Container(
            height: containerHeight,
            width: containerWidth,
            decoration: const BoxDecoration(
              // borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0XFF9B3133), Colors.black],
                // radius: 0.75,
                // focal: Alignment(0.7, -0.7),
                // tileMode: TileMode.clamp,
              ),
            ),

            // body: Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: Column(children: [
            //     // Row(
            //     //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     //     children: const [
            //     //       Icon(Icons.arrow_back_ios_new),
            //     //       Icon(Icons.abc)
            //     //     ]),
            //     SizedBox(
            //       width: containerWidth,
            //       height: 250,
            //       // child: Container(
            //       //   decoration: BoxDecoration(
            //       //     borderRadius: BorderRadius.circular(20),
            //       //     gradient: const RadialGradient(
            //       //       colors: [Color(0XFF9B3133), Colors.black],
            //       //       radius: 0.75,
            //       //       focal: Alignment(0.7, -0.7),
            //       //       tileMode: TileMode.clamp,
            //       //     ),
            //       //   ),
            //       // ),
            //     ),
            //   ]),
            // ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    const TopWidget(),
                    const SizedBox(height: 10),
                    Container(
                      height: 220,
                      width: 160,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(30)),
                      child: Card(
                        elevation: 30,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Image.asset(
                          widget.image,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      widget.title,
                      style: GoogleFonts.playfairDisplay(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      widget.author,
                      style: GoogleFonts.playfairDisplay(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const RatingsRow(),
                    const SizedBox(height: 5),
                    RichText(
                      textAlign: TextAlign.justify,
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                        text: widget.synopsis,
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 16, color: Colors.white60),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: 70,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              primary: const Color(0XFF37BD70)),
                          onPressed: () {},
                          child: Text(
                            'Read Now',
                            style: GoogleFonts.playfairDisplay(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RatingsRow extends StatelessWidget {
  const RatingsRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          const Icon(
            Icons.star_rate_rounded,
            color: Colors.yellow,
          ),
          const Icon(
            Icons.star_rate_rounded,
            color: Colors.yellow,
          ),
          const Icon(
            Icons.star_rate_rounded,
            color: Colors.yellow,
          ),
          const Icon(
            Icons.star_half_rounded,
            color: Colors.yellow,
          ),
          // const SizedBox(
          //   width: 10,
          // ),
          const Spacer(),
          Row(
            children: [
              Text(
                '1.2k ratings',
                style: GoogleFonts.playfairDisplay(
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 10),
              // const Spacer(),
              const Icon(
                // Icons.library_books_rounded,
                FontAwesomeIcons.bookOpen,
                color: Colors.yellow,
              ),
              const SizedBox(width: 8),
              Text(
                '1.6m readings',
                style: GoogleFonts.playfairDisplay(
                  color: Colors.white,
                ),
              ),
              // const Spacer()
            ],
          )
        ],
      ),
    );
  }
}

class TopWidget extends StatelessWidget {
  const TopWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.white,
          iconSize: 28,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        const Icon(
          Icons.bookmark,
          color: Colors.white,
          size: 32,
        )
      ],
    );
  }
}
