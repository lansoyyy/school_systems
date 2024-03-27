import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';
import 'package:school_systems/screens/tabs/chats/classes_tab.dart';
import 'package:school_systems/screens/tabs/chats/general_tab.dart';
import 'package:school_systems/screens/tabs/courses/course_info_screen.dart';
import 'package:school_systems/utlis/colors.dart';
import 'package:school_systems/widgets/text_widget.dart';

class ChatTab extends StatefulWidget {
  const ChatTab({super.key});

  @override
  State<ChatTab> createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {
  final searchController = TextEditingController();
  String nameSearched = '';

  int selectedIndex = 0;

  String selected = 'Classes';

  List filters = [
    {'name': 'Classes', 'icon': Icons.beach_access_outlined},
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
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
                        text: 'Messages',
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
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: grey,
                    ),
                    borderRadius: BorderRadius.circular(100)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    style: TextStyle(
                        color: grey, fontFamily: 'Regular', fontSize: 14),
                    onChanged: (value) {
                      setState(() {
                        nameSearched = value;
                      });
                    },
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelStyle: const TextStyle(
                          color: Colors.white,
                        ),
                        hintText: 'Search messages',
                        hintStyle: TextStyle(fontFamily: 'Bold', color: grey),
                        suffixIcon: const Icon(
                          Icons.search,
                          color: Colors.grey,
                        )),
                    controller: searchController,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: primary,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: SizedBox(
                  height: 40,
                  child: TabBar(
                      indicatorWeight: 2,
                      indicatorSize: TabBarIndicatorSize.tab,
                      dividerColor: Colors.transparent,
                      indicatorColor: secondary,
                      labelColor: Colors.white,
                      indicatorPadding:
                          const EdgeInsets.only(left: 20, right: 20),
                      unselectedLabelColor: Colors.grey.withOpacity(0.5),
                      tabs: const [
                        Tab(
                          text: 'Classes',
                        ),
                        Tab(
                          text: 'General',
                        ),
                      ]),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Expanded(
                child: TabBarView(children: [
                  ClassesTab(),
                  GeneralTab(),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
