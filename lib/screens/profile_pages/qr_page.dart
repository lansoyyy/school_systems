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
          child: Stack(
            children: [
              Column(
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
                        text: 'Student QR Code',
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
                    height: 50,
                  ),
                  Center(
                    child: Container(
                      height: 400,
                      width: 300,
                      decoration: BoxDecoration(
                        color: secondary,
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Image.asset(
                            'assets/images/image 4.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: TextWidget(
                      text: 'Lance Olana',
                      fontSize: 24,
                      fontFamily: 'Bold',
                      color: primary,
                    ),
                  ),
                  Center(
                    child: TextWidget(
                      text: 'BS in Computer Engineering',
                      fontSize: 12,
                      fontFamily: 'Medium',
                      color: grey,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 75, left: 140),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: primary,
                      width: 3,
                    ),
                  ),
                  child: const CircleAvatar(
                    minRadius: 45,
                    maxRadius: 45,
                    backgroundImage: AssetImage(
                      'assets/images/profile.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
