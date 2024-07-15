import 'package:flutter/material.dart';
import 'package:fourth_app/item.dart';
import 'package:fourth_app/widgets/list_item.dart';

class ToDoList extends StatelessWidget {
  ToDoList({super.key, required this.listOfItems});
  List<Item> listOfItems;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listOfItems.length,
      itemBuilder: (context, index) {
        return ListItem(
          currentItem: listOfItems[index],
        );
      },
    );
  }
}
