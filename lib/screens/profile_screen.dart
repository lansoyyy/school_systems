import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:school_systems/screens/profile_pages/qr_page.dart';
import 'package:school_systems/utlis/colors.dart';
import 'package:school_systems/widgets/button_widget.dart';
import 'package:school_systems/widgets/text_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                    const SizedBox(
                      width: 50,
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          color: primary,
                          Icons.edit_square,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const CircleAvatar(
                      minRadius: 45,
                      maxRadius: 45,
                      backgroundImage: AssetImage(
                        'assets/images/profile.png',
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          color: primary,
                          Icons.settings,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
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
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonWidget(
                      height: 35,
                      width: 150,
                      color: secondary,
                      fontSize: 14,
                      label: 'View Grades',
                      onPressed: () {},
                    ),
                    ButtonWidget(
                      height: 35,
                      width: 150,
                      color: secondary,
                      fontSize: 14,
                      label: 'Student QR Code',
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const QRPage()));
                      },
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
                  text: 'Student Information',
                  fontSize: 18,
                  fontFamily: 'Bold',
                  color: primary,
                ),
                const SizedBox(
                  height: 5,
                ),
                tile('ID Number', '2020123456789'),
                tile('Year Level', '3rd Year'),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 40,
                  child: TabBar(
                      indicatorWeight: 2,
                      indicatorSize: TabBarIndicatorSize.tab,
                      dividerColor: Colors.transparent,
                      indicatorColor: secondary,
                      labelColor: primary,
                      indicatorPadding:
                          const EdgeInsets.only(left: 20, right: 20),
                      unselectedLabelColor: Colors.grey,
                      tabs: const [
                        Tab(
                          text: 'Personal Information',
                        ),
                        Tab(
                          text: 'Background',
                        ),
                      ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: TabBarView(children: [
                    personal(),
                    background(),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget personal() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          tile('Email', 'lance.olana@gmail.com'),
          tile('Contact Number', '09090104355'),
          tile('Date of Birth', 'November 01, 2001'),
          tile('Gender', 'Male'),
          tile('Height', '170 cm'),
          tile('Weight', '66 kg'),
          tile('Bloodtype', 'O+'),
          const SizedBox(
            height: 10,
          ),
          TextWidget(
            text: 'Emergency Contact Person',
            fontSize: 18,
            fontFamily: 'Bold',
            color: primary,
          ),
          const SizedBox(
            height: 5,
          ),
          tile('Contact Person', 'Mariza Olana'),
          tile('Address', 'Zone 3, Poblacion, Impasugong, Bukidnon'),
          tile('Contact Number', '09090104355'),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget background() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          tile('Address', 'Zone 3, Poblacion, Impasugong, Bukidnon'),
          tile('Place of Birth', 'Zone 3, Poblacion, Impasugong, Bukidnon'),
          tile('Nationality', 'Filipino'),
          tile('Religion', 'Roman Catholic'),
          const SizedBox(
            height: 10,
          ),
          tile("Mother's Name", 'Mariza Olana'),
          tile('Address', 'Zone 3, Poblacion, Impasugong, Bukidnon'),
          tile('Contact Number', '09090104355'),
          const SizedBox(
            height: 10,
          ),
          tile("Father's Name", 'Elmer Olana'),
          tile('Address', 'Zone 3, Poblacion, Impasugong, Bukidnon'),
          tile('Contact Number', '09090104355'),
        ],
      ),
    );
  }

  Widget tile(String title, String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 125,
            height: 40,
            decoration: BoxDecoration(
              color: primary,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(
                  10,
                ),
                bottomLeft: Radius.circular(
                  10,
                ),
              ),
            ),
            child: Center(
              child: TextWidget(
                text: title,
                fontSize: 12,
                color: Colors.white,
                fontFamily: 'Bold',
              ),
            ),
          ),
          Container(
            width: 225,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.grey,
              ),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(
                  10,
                ),
                bottomRight: Radius.circular(
                  10,
                ),
              ),
            ),
            child: Center(
              child: TextWidget(
                text: text,
                fontSize: 14,
                color: primary,
                fontFamily: 'Bold',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
