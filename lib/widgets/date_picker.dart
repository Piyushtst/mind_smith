import 'package:flutter/material.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:table_calendar/table_calendar.dart';

class PickDate extends StatefulWidget {
  const PickDate({Key? key}) : super(key: key);

  @override
  State<PickDate> createState() => _PickDateState();
}

class _PickDateState extends State<PickDate> {
  DateTime today = DateTime.now();
  late DateTime day;
  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      locale: "en_US",
      rowHeight: 43,
      headerStyle: const HeaderStyle(
        leftChevronVisible: true,
        rightChevronVisible: true,
        //  headerPadding: EdgeInsets.only(left: 80),
        //titleTextFormatter:,
        //titleTextFormatter: ,
        formatButtonVisible: false,
        titleCentered: true,
        rightChevronIcon: Icon(
          Icons.chevron_right,
          size: 16,
          color: Colors.grey,
        ),
        leftChevronIcon: Icon(
          Icons.chevron_left,
          size: 16,
          color: Colors.grey,
        ),
      ),
      calendarStyle: const CalendarStyle(
          defaultTextStyle: TextStyle(fontWeight: FontWeight.bold,),
          todayTextStyle: TextStyle(color: blk),
          selectedDecoration: BoxDecoration(color: yelowShade, shape: BoxShape.circle,),
          selectedTextStyle: TextStyle(color: blk,fontWeight: FontWeight.bold,)),
      focusedDay: today,
      firstDay: DateTime.utc(2023, 01, 01),
      lastDay: DateTime.utc(2030, 3, 14),
      availableGestures: AvailableGestures.all,
      selectedDayPredicate: (day) => isSameDay(day, today),
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          selectedDay = selectedDay;
          today = focusedDay;
        });
      },
    );
  }
}

