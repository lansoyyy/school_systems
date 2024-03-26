import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';
import 'package:school_systems/utlis/colors.dart';
import 'package:school_systems/widgets/button_widget.dart';
import 'package:school_systems/widgets/text_widget.dart';

class ViewInfoTab extends StatefulWidget {
  const ViewInfoTab({super.key});

  @override
  State<ViewInfoTab> createState() => _ViewInfoTabState();
}

class _ViewInfoTabState extends State<ViewInfoTab> {
  final searchController = TextEditingController();
  String nameSearched = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: primary,
                    ),
                  ),
                  TextWidget(
                    text: 'Assignment',
                    fontSize: 24,
                    fontFamily: 'Bold',
                    color: primary,
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextWidget(
                text: 'Mathematics 1111: Assignment 1',
                fontSize: 16,
                fontFamily: 'Bold',
                color: primary,
              ),
              TextWidget(
                text: 'Due 7, Dec 2023,   23:59 |  100 points',
                fontSize: 14,
                fontFamily: 'Medium',
                color: grey,
              ),
              const SizedBox(
                height: 5,
              ),
              Divider(
                color: grey,
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 500,
                child: TextWidget(
                  align: TextAlign.start,
                  maxLines: 15,
                  text:
                      'The goal of this assignment is to assess your understanding of algebraic equations. You will be solving a series of equations, demonstrating your proficiency in manipulating algebraic expressions and solving for unknown variables.',
                  fontSize: 13,
                  fontFamily: 'Regular',
                  color: primary,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextWidget(
                text: 'Attachments',
                fontSize: 14,
                fontFamily: 'Medium',
                color: grey,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 150,
                height: 100,
                decoration: BoxDecoration(
                  color: grey.withOpacity(0.25),
                  border: Border.all(color: grey),
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.file_copy,
                    color: grey,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextWidget(
                text: 'Activity 1',
                fontSize: 14,
                fontFamily: 'Medium',
                color: Colors.black,
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: ButtonWidget(
                  width: 350,
                  label: 'Add Work',
                  onPressed: () {
                    showAttachments();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  showAttachments() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: SizedBox(
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextWidget(
                  text: 'Add work',
                  fontSize: 18,
                  color: primary,
                  fontFamily: 'Bold',
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: secondary, shape: BoxShape.circle),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.add_to_drive_sharp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextWidget(
                          text: 'Add from drive',
                          fontSize: 13,
                          fontFamily: 'Regular',
                          color: primary,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: secondary, shape: BoxShape.circle),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.attach_file_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextWidget(
                          text: 'Attach file',
                          fontSize: 13,
                          fontFamily: 'Regular',
                          color: primary,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: secondary, shape: BoxShape.circle),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.link,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextWidget(
                          text: 'Insert link',
                          fontSize: 13,
                          fontFamily: 'Regular',
                          color: primary,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
