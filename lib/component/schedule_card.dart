import 'package:calendar_scheduler/const/colors.dart';
import 'package:flutter/material.dart';

class _Time extends StatelessWidget {
  final int startTime;
  final int endTime;

  const _Time({Key? key, required this.startTime, required this.endTime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontWeight: FontWeight.w600,
      color: PRIMARY_COLOR,
      fontSize: 12,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${startTime.toString().padLeft(2, '0')}:00',
          style: textStyle,
        ),
        Text(
          '${startTime.toString().padLeft(2, '0')}:00',
          style: textStyle,
        ),
      ],
    );
  }
}

class _Content extends StatelessWidget {
  final String content;

  const _Content({required this.content, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Text(
      content,
    ));
  }
}
