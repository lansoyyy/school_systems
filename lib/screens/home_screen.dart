import 'package:flutter/material.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:school_systems/screens/tabs/calendar_tab.dart';
import 'package:school_systems/screens/tabs/chat_tab.dart';
import 'package:school_systems/screens/tabs/course_tab.dart';
import 'package:school_systems/screens/tabs/home_tab.dart';
import 'package:school_systems/utlis/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _currentIndex = 0;

  List tabs = [
    const HomeTab(),
    const SizedBox(),
    const CourseTab(),
    const CalendarTab(),
    const ChatTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        backgroundColor: secondary,
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: const Icon(Icons.home),
            title: const Text(
              "Home",
              style: TextStyle(fontFamily: 'Bold'),
            ),
            selectedColor: Colors.white,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.newspaper_outlined),
            title: const Text(
              "Feed",
              style: TextStyle(fontFamily: 'Bold'),
            ),
            selectedColor: Colors.white,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: const Icon(Icons.school_outlined),
            title: const Text(
              "Course",
              style: TextStyle(fontFamily: 'Bold'),
            ),
            selectedColor: Colors.white,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: const Icon(Icons.calendar_month_outlined),
            title: const Text(
              "Calendar",
              style: TextStyle(fontFamily: 'Bold'),
            ),
            selectedColor: Colors.white,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: const Icon(Icons.chat_bubble_outline_rounded),
            title: const Text(
              "Chat",
              style: TextStyle(fontFamily: 'Bold'),
            ),
            selectedColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
