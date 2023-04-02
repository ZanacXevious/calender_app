import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class MainCalendar extends StatelessWidget {
  final OnDaySelected onDaySelected;
  final DateTime selectedDAte;

  MainCalendar(
      {Key? key, required this.onDaySelected, required this.selectedDAte})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      onDaySelected: onDaySelected,
      selectedDayPredicate: (date) =>
          date.year == selectedDAte.year &&
          date.month == selectedDAte.month &&
          date.day == selectedDAte.day,
      firstDay: DateTime(1800, 1, 1),
      lastDay: DateTime(2100, 1, 1),
      focusedDay: DateTime.now(),
    );
  }
}
