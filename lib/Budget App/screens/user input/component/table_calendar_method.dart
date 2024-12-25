import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../controller/user_input_controller.dart';

Container tableCalendarMethod() {
  return Container(
    padding: const EdgeInsets.all(5.0),
    decoration: BoxDecoration(
      color: Colors.grey.shade300,
      borderRadius: BorderRadius.circular(8),
    ),
    child: GetBuilder<UserInputController>(
      builder: (controller) {
        return TableCalendar(
          focusedDay: controller.today!,
          selectedDayPredicate: (day) => isSameDay(
            day,
            controller.today,
          ),
          daysOfWeekStyle: const DaysOfWeekStyle(
            weekdayStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              letterSpacing: .2,
            ),
            weekendStyle: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.w500,
              letterSpacing: .2,
            ),
          ),
          calendarStyle: CalendarStyle(
            todayDecoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.blue),
              shape: BoxShape.circle,
            ),
            selectedDecoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.blue),
            ),
            selectedTextStyle: const TextStyle(
              fontSize: 19,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
            todayTextStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            defaultTextStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              letterSpacing: .2,
              fontSize: 15,
            ),
          ),
          onDaySelected: controller.onDaySelected,
          headerStyle: const HeaderStyle(
            titleCentered: true,
            formatButtonVisible: false,
            titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              letterSpacing: .5,
            ),
          ),
          calendarFormat: CalendarFormat.week,
          firstDay: DateTime.utc(2000, 10, 16),
          lastDay: DateTime.utc(2050, 3, 14),
        );
      },
    ),
  );
}
