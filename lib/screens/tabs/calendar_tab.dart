import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';
import 'package:school_systems/screens/tabs/courses/course_info_screen.dart';
import 'package:school_systems/utlis/colors.dart';
import 'package:school_systems/widgets/text_widget.dart';

class CalendarTab extends StatefulWidget {
  const CalendarTab({super.key});

  @override
  State<CalendarTab> createState() => _CalendarTabState();
}

class _CalendarTabState extends State<CalendarTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget(
                      text: 'Calendar',
                      fontSize: 24,
                      fontFamily: 'Bold',
                      color: primary,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 50,
                ),
              ],
            ),
            SizedBox(
              height: 500,
              width: double.infinity,
              child: Calendar(
                eventTileHeight: 67.5,
                startOnMonday: true,
                weekDays: const [
                  'Mon',
                  'Tue',
                  'Wed',
                  'Thu',
                  'Fri',
                  'Sat',
                  'Sun'
                ],
                eventsList: [
                  NeatCleanCalendarEvent(
                    description: 'Description placeholder',
                    color: secondary,
                    'Sample 1',
                    startTime: DateTime.now(),
                    endTime: DateTime.now().add(
                      const Duration(days: 1),
                    ),
                  ),
                  NeatCleanCalendarEvent(
                    description: 'Description placeholder',
                    color: secondary,
                    'Sample 2',
                    startTime: DateTime.now(),
                    endTime: DateTime.now().add(
                      const Duration(days: 1),
                    ),
                  ),
                ],
                isExpandable: true,
                eventDoneColor: Colors.green,
                selectedColor: secondary,
                selectedTodayColor: secondary,
                todayColor: Colors.blue,
                locale: 'en_US',
                isExpanded: true,
                expandableDateFormat: 'EEEE, dd. MMMM yyyy',
                datePickerType: DatePickerType.date,
                dayOfWeekStyle: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Bold',
                    fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
