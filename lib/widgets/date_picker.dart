import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CustomDatePicker extends StatelessWidget {
  const CustomDatePicker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      child: DatePicker(
        DateTime.now(),
        initialSelectedDate: DateTime.now(),
        selectionColor: kPrimaryColor,
        selectedTextColor: Colors.white,
        onDateChange: (date) {
          // New date selected
        },
      ),
    );
  }
}
