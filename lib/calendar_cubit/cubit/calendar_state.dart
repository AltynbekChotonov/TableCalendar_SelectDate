part of 'calendar_cubit.dart';

abstract class CalendarState extends Equatable {
  const CalendarState();

  @override
  List<Object> get props => [];
}

class CalendarInitial extends CalendarState {
  const CalendarInitial(this.date);

  final DateTime date;

    @override
  List<Object> get props => [date];
}

class NewDateState extends CalendarState{
  const NewDateState(this.date);

  final DateTime date;

    @override
  List<Object> get props => [date];

}


