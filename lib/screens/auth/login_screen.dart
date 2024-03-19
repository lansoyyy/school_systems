import 'package:flutter/material.dart';
import 'package:school_systems/utlis/colors.dart';
import 'package:school_systems/widgets/button_widget.dart';
import 'package:school_systems/widgets/text_widget.dart';
import 'package:school_systems/widgets/textfield_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final id = TextEditingController();
  final password = TextEditingController();

  bool isstudent = true;
  bool isteacher = false;
  bool remembered = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80,
              ),
              Image.asset(
                'assets/images/logo.png',
                width: 200,
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isstudent = true;
                        isteacher = false;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 135,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          100,
                        ),
                        color: grey.withOpacity(0.5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextWidget(
                              text: 'Student',
                              fontSize: 14,
                              fontFamily: 'Bold',
                              color: primary,
                            ),
                            Icon(
                              isstudent
                                  ? Icons.radio_button_checked
                                  : Icons.radio_button_off,
                              color: isstudent ? secondary : primary,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isstudent = false;
                        isteacher = true;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 135,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          100,
                        ),
                        color: grey.withOpacity(0.5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextWidget(
                              text: 'Teacher',
                              fontSize: 14,
                              fontFamily: 'Bold',
                              color: primary,
                            ),
                            Icon(
                              isteacher
                                  ? Icons.radio_button_checked
                                  : Icons.radio_button_off,
                              color: isteacher ? secondary : primary,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextFieldWidget(
                prefixIcon: Icons.person,
                width: 275,
                controller: id,
                label: 'Enter ID number',
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  TextFieldWidget(
                    prefixIcon: Icons.lock,
                    width: 275,
                    isObscure: true,
                    showEye: true,
                    controller: password,
                    label: 'Password',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40, left: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              activeColor: primary,
                              value: remembered,
                              onChanged: (value) {
                                setState(() {
                                  remembered = value!;
                                });
                              },
                            ),
                            TextWidget(
                              text: 'Remember Me',
                              fontSize: 12,
                              color: primary,
                              fontFamily: 'Bold',
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: TextWidget(
                            text: 'Forgot Password?',
                            fontSize: 12,
                            color: primary,
                            fontFamily: 'Bold',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonWidget(
                width: 275,
                label: 'Login',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
