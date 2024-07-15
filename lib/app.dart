import 'package:flutter/material.dart';
import 'package:fourth_app/item.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fourth_app/widgets/to_do_list.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  void addItem(Item newItem) {
    setState(() {
      enteredItems.add(newItem);
    });
  }

  void deleteItem(Item newItem) {
    setState(() {
      enteredItems.remove(newItem);
    });
  }

  List<Item> enteredItems = [
    Item(
      content: 'Flutter project',
      deadline: DateTime.now(),
    ),
    Item(
      content: 'Eating lunch',
      deadline: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Page',
          style: GoogleFonts.shadowsIntoLight(
            fontSize: 25,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.person),
            iconSize: 35,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'All lists',
              style: GoogleFonts.shadowsIntoLight(
                fontSize: 40,
              ),
            ),
            Text(
              '${enteredItems.length} things to do',
              style: GoogleFonts.shadowsIntoLight(
                fontSize: 20,
                color: const Color.fromARGB(255, 80, 78, 78),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Expanded(
                child: ToDoList(
              listOfItems: enteredItems,
            )),
          ],
        ),
      ),
    );
  }
}
