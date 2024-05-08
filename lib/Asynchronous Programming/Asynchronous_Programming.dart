import 'dart:async';
import 'package:flutter/material.dart';

class DigitalClockApp extends StatefulWidget {
  const DigitalClockApp({super.key});

  @override
  State<DigitalClockApp> createState() => _DigitalClockAppState();
}

class _DigitalClockAppState extends State<DigitalClockApp> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        dateTime = DateTime.now();
      });
    });
    return SafeArea(
        child: Scaffold(
          body: Container(
            height: double.infinity,
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(img[index]),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${(dateTime.hour % 12).toString().padLeft(2, '0')} : ${(dateTime.minute).toString().padLeft(2, '0')} : ${(dateTime.second).toString().padLeft(2, '0')}',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 54,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 22, left: 6),
                          child: Text(
                            (dateTime.hour > 12) ? 'PM' : 'AM',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 7),
                    Text(
                      '${days[dateTime.weekday - 1]}  ${dateTime.day} ${month[dateTime.month - 1]}',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (index == 2) {
                          index = 0;
                        } else {
                          index++;
                        }
                      });
                    },
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Text(
                        'Change Theme',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

DateTime dateTime = DateTime.now();
late String day;

List days = [
  'Monday',
  'Tuesday',
  'Wednesday',
  'Thursday',
  'Friday',
  'Saturday',
  'Sunday',
];

List img = [
  'assets/bg.jpg',
  'assets/bg2.jpg',
  'assets/bg3.avif',
];

int index = 0;

List month = [
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December',
];