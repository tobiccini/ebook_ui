import 'package:ebook_ui/constants.dart';
import 'package:ebook_ui/widgets/book_list_tile.dart';
import 'package:flutter/material.dart';

class SixthRow extends StatelessWidget {
  const SixthRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: ListView.builder(
        
        // physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(0),
        itemBuilder: (context, index) => BookListTile(
          pictureLocation: otherBooksList[index]['address'],
          title: otherBooksList[index]['title'],
          author: otherBooksList[index]['author'],
          indexer: index,
        ),
        itemCount: otherBooksList.length,
      ),
    );
  }
}
