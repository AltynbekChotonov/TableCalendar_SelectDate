import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'calendar_state.dart';

class CalendarCubit extends Cubit<CalendarState> {
  CalendarCubit() : super(CalendarInitial(DateTime.now()));


  Future<void>showDatePickerMethod(
    BuildContext context) async {
      final newDate
       = await showDatePicker(
        context: context, 
        initialDate: DateTime.now(), 
        firstDate: DateTime(1945), 
        lastDate: DateTime.now(),
        );
emit(NewDateState(newDate!));
}


}
