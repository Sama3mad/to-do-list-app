import 'package:intl/intl.dart';

var format = DateFormat.yMd();

class Item {
  Item({
    required this.content,
    required this.deadline,
  });
  String content;
  DateTime deadline;
}
