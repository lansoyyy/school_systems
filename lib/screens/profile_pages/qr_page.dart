import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';
import 'package:school_systems/screens/tabs/courses/view_info_screen.dart';
import 'package:school_systems/utlis/colors.dart';
import 'package:school_systems/widgets/text_widget.dart';

class QRPage extends StatefulWidget {
  const QRPage({super.key});

  @override
  State<QRPage> createState() => _QRPageState();
}

class _QRPageState extends State<QRPage> {
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
                    text: 'Mathematics 111',
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
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: grey, width: 1.5),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const CircleAvatar(
                              minRadius: 20,
                              maxRadius: 20,
                              backgroundColor: Colors.blue,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            TextWidget(
                              text: 'Mr. John Doe',
                              fontSize: 18,
                              fontFamily: 'Bold',
                              color: primary,
                            ),
                            const Expanded(child: SizedBox()),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 375,
                          child: TextWidget(
                            maxLines: 6,
                            align: TextAlign.start,
                            text:
                                'Welcome to the 4th year -  10A Mathematics class! Explore the exciting world of algebra, geometry, and calculus with Ms. Reyes',
                            fontSize: 12,
                            fontFamily: 'Medium',
                            color: primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Expanded(child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Container(
                      width: double.infinity,
                      height: 125,
                      decoration: BoxDecoration(
                        border: Border.all(color: grey, width: 1.5),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 35,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: secondary,
                                    ),
                                    child: const Icon(
                                      Icons.padding_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  TextWidget(
                                    text: 'New Assignment: Algebra Chapter 3',
                                    fontSize: 14,
                                    fontFamily: 'Bold',
                                    color: primary,
                                  ),
                                  const Expanded(child: SizedBox()),
                                  PopupMenuButton(
                                    itemBuilder: (context) {
                                      return [
                                        PopupMenuItem(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const ViewInfoTab()));
                                          },
                                          child: TextWidget(
                                            text: 'View',
                                            fontSize: 14,
                                            fontFamily: 'Bold',
                                          ),
                                        ),
                                      ];
                                    },
                                  )
                                ],
                              ),
                            ),
                            Divider(
                              color: grey,
                              thickness: 0.5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 5),
                              child: TextWidget(
                                text: 'Add a class comment',
                                fontSize: 12,
                                fontFamily: 'Regular',
                                color: grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}
