import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class CalendarTextFormField extends StatelessWidget {
  CalendarTextFormField({
    super.key,
    required this.string,
    required this.controller,
  });

  final TextEditingController controller;
  final String string;

  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () async {
        final newDate = await showDatePicker(
          context: context,
          initialDate: date,
          firstDate: DateTime(1945),
          lastDate: DateTime.now(),
        );
        if (newDate == null) return;
        final formattedDate = DateFormat('dd/MM/yyyy').format(newDate);
        controller.text = formattedDate;
      },
      keyboardType: TextInputType.none,
      controller: controller,
      decoration: InputDecoration(
        hintText: string,
        suffixIcon: const Icon(Icons.calendar_today_rounded),
      ),
    );
  }
}
