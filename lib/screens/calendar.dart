import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'dart:collection';

class Event {
  final String title;

  const Event(this.title);

  @override
  String toString() => title;
}

final events = LinkedHashMap<DateTime, List<Event>>(
  equals: isSameDay,
  hashCode: getHashCode,
)..addAll({
    DateTime.now(): [
      Event('Today\'s Event 1'),
      Event('Today\'s Event 2'),
      Event('Today\'s Event 3'),
    ],
    DateTime.utc(2021, 04, 23): [
      Event('Today\'s Event 1'),
      Event('Today\'s Event 2'),
      Event('Today\'s Event 3'),
    ],
  });

int getHashCode(DateTime key) {
  return key.day * 1000000 + key.month * 10000 + key.year;
}

/// Returns a list of [DateTime] objects from [first] to [last], inclusive.
List<DateTime> daysInRange(DateTime first, DateTime last) {
  final dayCount = last.difference(first).inDays + 1;
  return List.generate(
    dayCount,
    (index) => DateTime.utc(first.year, first.month, first.day + index),
  );
}

final kNow = DateTime.now();
final kFirstDay = DateTime(kNow.year, kNow.month - 3, kNow.day);
final kLastDay = DateTime(kNow.year, kNow.month + 3, kNow.day);

class CalendarWidget extends StatefulWidget {
  @override
  CalendarWidgetState createState() => CalendarWidgetState();
}

class CalendarWidgetState extends State<CalendarWidget> {
  ValueNotifier<List<Event>> _selectedEvents;

  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();

  ///DateTime _focusedDay2 = DateTime
  DateTime _selectedDay;

  List<Event> _getEventsForDay(DateTime day) {
    return events[day] ?? [];
  }

  @override
  void initState() {
    super.initState();
    _selectedDay = _focusedDay;
    _selectedEvents = ValueNotifier(_getEventsForDay(_selectedDay));
  }

  @override
  void dispose() {
    _selectedEvents.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          AppBar(
            title: Text("Calendar"),
          ),
          Padding(
              padding: EdgeInsets.only(top: 25, left: 12.5, right: 12.5),
              child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFff2e63),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: TableCalendar(
                      calendarStyle: const CalendarStyle(
                        rangeHighlightColor: Color(0xFFff2e63),
                        markerDecoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        defaultDecoration: const BoxDecoration(
                            color: Color(0xFFFF722E), shape: BoxShape.circle),
                        selectedDecoration: const BoxDecoration(
                            color: Color(0xFFff2e63), shape: BoxShape.circle),
                        todayDecoration: const BoxDecoration(
                            color: Color(0xFF010A43), shape: BoxShape.circle),
                        holidayDecoration: const BoxDecoration(
                            color: Color(0xFF6CEF00), shape: BoxShape.circle),
                        weekendDecoration: const BoxDecoration(
                            color: Color(0xFF993FFF), shape: BoxShape.circle),
                        weekendTextStyle: TextStyle(color: Colors.white),
                        outsideDecoration: const BoxDecoration(
                            color: Color(0xFFff9d9d), shape: BoxShape.circle),
                        outsideTextStyle: TextStyle(color: Colors.white),
                        disabledDecoration: const BoxDecoration(
                            color: Color(0xFFff9d9d), shape: BoxShape.circle),
                        disabledTextStyle: TextStyle(color: Colors.white),
                        defaultTextStyle: TextStyle(color: Colors.white),
                      ),
                      firstDay: kFirstDay,
                      lastDay: kLastDay,
                      focusedDay: _focusedDay,
                      calendarFormat: _calendarFormat,
                      eventLoader: (day) {
                        return _getEventsForDay(day);
                      },
                      selectedDayPredicate: (day) {
                        // Use `selectedDayPredicate` to determine which day is currently selected.
                        // If this returns true, then `day` will be marked as selected.

                        // Using `isSameDay` is recommended to disregard
                        // the time-part of compared DateTime objects.
                        return isSameDay(_selectedDay, day);
                      },
                      onDaySelected: (selectedDay, focusedDay) {
                        if (!isSameDay(_selectedDay, selectedDay)) {
                          // Call `setState()` when updating the selected day
                          setState(() {
                            _selectedDay = selectedDay;
                            _focusedDay = focusedDay;
                          });
                        }
                        _selectedEvents.value = _getEventsForDay(selectedDay);
                        print(_selectedEvents);
                      },
                      onFormatChanged: (format) {
                        if (_calendarFormat != format) {
                          // Call `setState()` when updating calendar format
                          setState(() {
                            _calendarFormat = format;
                          });
                        }
                      },
                      onPageChanged: (focusedDay) {
                        // No need to call `setState()` here
                        _focusedDay = focusedDay;
                      },
                    ),
                  ))),
          const SizedBox(height: 8.0),
          Expanded(
            flex: 1,
            child: ValueListenableBuilder<List<Event>>(
              valueListenable: _selectedEvents,
              builder: (context, value, _) {
                return ListView.builder(
                  itemCount: value.length,
                  itemBuilder: (context, index) {
                    final item = '${value[index]}';
                    return Container(
                      clipBehavior: Clip.hardEdge,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 12.5,
                        vertical: 4.0,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFF010A43),
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Dismissible(
                        background: Container(color: Color(0xFF6CEF00)),
                        secondaryBackground:
                            Container(color: Color(0xFFff2e63)),
                        key: Key(item),
                        child: Container(
                            margin: EdgeInsets.all(10),
                            child: Text('${value[index]}')),
                        onDismissed: (direction) {
                          setState(() {
                            value.removeAt(index);
                          });
                        },
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
