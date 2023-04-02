import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class MainCalendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime(1800, 1, 1),
      lastDay: DateTime(2100, 1, 1),
      focusedDay: DateTime.now(),
    );
  }
}
