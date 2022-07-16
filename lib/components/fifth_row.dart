import 'package:flutter/material.dart';

class FifthRow extends StatefulWidget {
  const FifthRow({Key? key}) : super(key: key);

  @override
  State<FifthRow> createState() => _FifthRowState();
}

class _FifthRowState extends State<FifthRow> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => ListPack(
        indexer: index,
      ),
    );
  }
}

class ListPack extends StatelessWidget {
  const ListPack(
      {Key? key,
      this.title,
      this.description,
      this.author,
      required this.indexer,
      this.picturePlace})
      : super(key: key);
  final String? title;
  final String? description;
  final String? author;
  final String? picturePlace;
  final int indexer;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: ((context, index) => Row(
            children: [
              SizedBox(
                child: Card(
                  elevation: 10,
                  child: Image.asset(picturePlace!),
                ),
              ),
              Column(
                children: [
                  Text(title!),
                  Text(description!),
                  Text(author!),
                ],
              )
            ],
          )),
    );
  }
}
