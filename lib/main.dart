import 'package:flutter/material.dart';
import 'package:fourth_app/to_do_list.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToDoList(),
    ),
  );
}