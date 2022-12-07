import 'package:flutter/material.dart';

import 'calendar_widget.dart';

class UseCalendarWidget extends StatelessWidget {
  const UseCalendarWidget({super.key, required this.birthDate});

  final TextEditingController birthDate;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'date of birth',
              suffixIcon: CalendarWidget(
                controller: birthDate,
              ),
            ),
          ),
        )
      ],
    );
  }
}

CalendarWidget({required TextEditingController controller}) {}
