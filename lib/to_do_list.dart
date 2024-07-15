import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fourth_app/widgets/list.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.list),
          iconSize: 50,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'All lists',
              style: TextStyle(
              fontSize: 23,
                
              ),
            ),
            Text(
              '... Categories',
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(150, 1, 1, 1),
              ),
            ),
            SizedBox(height: 8,),
            Expanded(child: List()),
          ],
        ),
      ),
    );
  }
}
