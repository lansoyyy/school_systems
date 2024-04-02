import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';
import 'package:school_systems/screens/profile_screen.dart';
import 'package:school_systems/utlis/colors.dart';
import 'package:school_systems/widgets/text_widget.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
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
                        text: 'Lance Olana',
                        fontSize: 24,
                        fontFamily: 'Bold',
                        color: primary,
                      ),
                      TextWidget(
                        text: 'BS in Computer Engineering',
                        fontSize: 12,
                        fontFamily: 'Medium',
                        color: grey,
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ProfileScreen()));
                    },
                    child: const CircleAvatar(
                      minRadius: 30,
                      maxRadius: 30,
                      backgroundImage: AssetImage(
                        'assets/images/profile.png',
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                color: primary,
              ),
              const SizedBox(
                height: 10,
              ),
              TextWidget(
                text: 'November 12, 2022',
                fontSize: 14,
                fontFamily: 'Medium',
                color: grey,
              ),
              const SizedBox(
                height: 5,
              ),
              TextWidget(
                text: 'Today',
                fontSize: 26,
                fontFamily: 'Bold',
                color: primary,
              ),
              CalendarWeek(
                pressedDateBackgroundColor: secondary,
                backgroundColor: Colors.transparent,
                controller: CalendarWeekController(),
                height: 100,
                minDate: DateTime.now().add(
                  const Duration(days: -365),
                ),
                maxDate: DateTime.now().add(
                  const Duration(days: 365),
                ),
                onDatePressed: (DateTime datetime) {
                  // Do something
                },
                onDateLongPressed: (DateTime datetime) {
                  // Do something
                },
                onWeekChanged: () {
                  // Do something
                },
                monthViewBuilder: (DateTime time) => const SizedBox(),
                todayDateStyle: TextStyle(color: primary, fontFamily: 'Bold'),
                dayOfWeekStyle: TextStyle(
                  fontFamily: 'Bold',
                  color: primary,
                ),
                dateStyle: TextStyle(
                  fontFamily: 'Bold',
                  color: primary,
                ),
                weekendsStyle: TextStyle(
                  fontFamily: 'Bold',
                  color: secondary,
                ),
                decorations: [
                  DecorationItem(
                      decorationAlignment: FractionalOffset.bottomRight,
                      date: DateTime.now(),
                      decoration: Icon(
                        Icons.today,
                        color: primary,
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: "Today's Class",
                    fontSize: 16,
                    fontFamily: 'Bold',
                    color: primary,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: TextWidget(
                      text: "See all",
                      fontSize: 14,
                      fontFamily: 'Bold',
                      color: primary,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        bottom: 5,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: grey, width: 1.5),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextWidget(
                                text: "History - Class 10A",
                                fontSize: 15,
                                fontFamily: 'Bold',
                                color: primary,
                              ),
                              TextWidget(
                                text: "9:00 AM - 10:30 AM",
                                fontSize: 12,
                                fontFamily: 'Bold',
                                color: primary,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Divider(
                color: primary,
                thickness: 0.75,
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: "Reminders",
                    fontSize: 18,
                    fontFamily: 'Bold',
                    color: primary,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: TextWidget(
                      text: "See all",
                      fontSize: 14,
                      fontFamily: 'Bold',
                      color: primary,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        bottom: 5,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 75,
                        decoration: BoxDecoration(
                          border: Border.all(color: grey, width: 1.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: secondary,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.calendar_month_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextWidget(
                                    text: "Assignment",
                                    fontSize: 15,
                                    fontFamily: 'Bold',
                                    color: primary,
                                  ),
                                  SizedBox(
                                    width: 250,
                                    child: TextWidget(
                                      text:
                                          "History - Class 10A: Prepare for the upcoming quiz on scheduled date",
                                      fontSize: 12,
                                      fontFamily: 'Bold',
                                      color: primary,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
