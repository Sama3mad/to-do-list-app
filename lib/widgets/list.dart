import 'package:flutter/material.dart';
import 'package:fourth_app/widgets/list_item.dart';

class List extends StatefulWidget {
  const List({super.key});

  @override
  State<List> createState() => _ListState();
}

class _ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) {
              return ListItem();
            },
          ),
        )
      ],
    );
  }
}
