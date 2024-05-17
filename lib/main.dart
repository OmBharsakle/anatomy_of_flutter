import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '8.2/stack_use.dart';
import 'Asynchronous Programming/Asynchronous_Programming.dart';
import 'Digital Clock/analog_clock.dart';
import 'Digital Clock/digital_clock.dart';
import 'Drawer/gmail_drawer.dart';
import 'Drawer/profile_drawer.dart';
import 'Dynamic Text Field/Dynamic_Text_Field.dart';
import 'Image Picker/Image_Picker.dart';
import 'Login_Signup_Page/Google_Login_Page_With_Validation.dart';
import 'Login_Signup_Page/intro_page.dart';
import 'Login_Signup_Page/login_page.dart';
import 'Login_Signup_Page/successfully.dart';
import 'flutter butten/buttons.dart';
import 'id_card/id_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' :(context) => AnalogClock(),
      },
    );

  }
}
