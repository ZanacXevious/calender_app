import 'package:calendar_scheduler/component/custom_text_field.dart';
import 'package:flutter/material.dart';

class ScheduleBottomSheet extends StatefulWidget {
  const ScheduleBottomSheet({Key? key}) : super(key: key);

  @override
  State<ScheduleBottomSheet> createState() => _ScheduleBottomSheetState();
}

class _ScheduleBottomSheetState extends State<ScheduleBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height / 2,
        color: Colors.white,
        padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    label: '시작시간',
                    isTime: true,
                  ),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: CustomTextField(
                    label: '종료시간',
                    isTime: true,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Expanded(
              child: CustomTextField(
                label: '내용',
                isTime: false,
              ),
            ),
            SizedBox(
              width: double.infinity,
              child:
                  ElevatedButton(onPressed: onSavePressed, child: Text('저장')),
            ),
          ],
        ),
      ),
    );
  }

  void onSavePressed() {}
}
