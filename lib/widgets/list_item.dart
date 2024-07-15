import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Text('Your text is written here'),
        ],
      ),
    );
  }
}