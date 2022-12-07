import 'dart:developer';

import 'package:flutter/material.dart';

class TableCalendar extends StatefulWidget {
  TableCalendar({Key? key}) : super(key: key);

  @override
  State<TableCalendar> createState() => _TableCalendarState();
}

class _TableCalendarState extends State<TableCalendar> {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          '${date.day}/${date.month}/${date.year}',
          //style: const TextStyle(fontSize: 25),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          child: Text('Select Date'),
          onPressed: () async {
            DateTime? newDate = await showDatePicker(
              context: context,
              initialDate: date,
              firstDate: DateTime(1945),
              lastDate: DateTime.now(),
            );
            // if 'CANCEL' => null
            if (newDate == null) return;

            // if 'OK' => DateTime
            setState(() => date = newDate);
            // log('newDate =>   $newDate');
            //  log('date =>  $date');
          },
        ),
      ],
    ));
  }
}


        // TextFormField(
        //   decoration: InputDecoration(
        //     border: OutlineInputBorder(
        //       borderRadius: BorderRadius.circular(20)
        //       ),
        //     hintText: 'birthDate',
        //     labelText: '${date.day}/${date.month}/${date.year}',
        //     suffixIcon: IconButton(
        //       icon: const Icon(Icons.calendar_today_rounded),
        //       onPressed: () async {
        //         DateTime? newDate = await showDatePicker(
        //           context: context,
        //           initialDate: date,
        //           firstDate: DateTime(1945),
        //           lastDate: DateTime.now(),
        //         );
        //         if (newDate == null) return;
        //         setState(() => date = newDate);
        //       },
        //     ),
        //   ),
        // ),