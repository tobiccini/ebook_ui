import 'package:flutter/material.dart';

class FirstRow extends StatelessWidget {
  const FirstRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu_rounded),
              iconSize: 40,
              color: Colors.white,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_rounded),
              iconSize: 40,
              color: Colors.white,
            ),
            const SizedBox(width: 4),
            const CircleAvatar(
              radius: 32,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('images/cat.jpg'),
            ),
          ],
        )
      ],
    );
  }
}
