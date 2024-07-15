import 'dart:math';
import 'package:flutter/material.dart';
import 'package:fourth_app/item.dart';
import 'package:google_fonts/google_fonts.dart';

class ListItem extends StatefulWidget {
  ListItem({Key? key, required this.currentItem}) : super(key: key);
  final Item currentItem;

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  bool checked = true; // Initial state

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Color.fromARGB(100, 198, 172, 234),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(checked
                  ? Icons.check_circle
                  : Icons.check_circle_outline_rounded),
              onPressed: () {
                setState(() {
                  checked = !checked; 
                });
              },
            ),
            Expanded(
              child: Text(
                widget.currentItem.content,
                style: GoogleFonts.shadowsIntoLight(
                  fontSize: 18,
                  color: Colors.black,
                ),
                maxLines: 1,
              ),
            ),
            Spacer(),
            Text(
              format.format(DateTime.now()),
              style: GoogleFonts.shadowsIntoLight(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
