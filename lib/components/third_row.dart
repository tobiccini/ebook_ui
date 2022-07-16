import 'package:ebook_ui/constants.dart';
import 'package:ebook_ui/widgets/stack_of_cards.dart';
import 'package:flutter/material.dart';

// class ThirdRow extends StatefulWidget {
//   const ThirdRow({Key? key}) : super(key: key);

//   @override
//   State<ThirdRow> createState() => _ThirdRowState();
// }

// class _ThirdRowState extends State<ThirdRow> {
//   // late final int index;
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: const [
//         Expanded(
//           child: StackOfCard(
//             pictureLocation: 'images/cat.jpg',
//             author: 'Jeffery Archer',
//             title: 'Kane & Abel',
//           ),
//         ),
//         Expanded(
//           child: StackOfCard(
//             pictureLocation: 'images/goose.jpg',
//             title: 'Master of the Game',
//             author: 'Sydney Sheldon',
//           ),
//         ),
//       ],
//     );
//   }
// }

class ThirdRow extends StatelessWidget {
  const ThirdRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 400,
      height: 300,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) => StackOfCard(
              pictureLocation: pictures[index],
              indexer: index,
              title: topBooksList[index]['title'],
              author: topBooksList[index]['author'], 
              synopsis: topBooksList[index]['synopsis'],

            )),
        itemCount: topBooksList.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 4,
          );
        },
      ),
    );
  }
}
