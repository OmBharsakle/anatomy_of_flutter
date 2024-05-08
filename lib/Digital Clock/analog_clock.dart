import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

class AnalogClock extends StatefulWidget {
  const AnalogClock({super.key});

  @override
  State<AnalogClock> createState() => _AnalogClockAppState();
}

class _AnalogClockAppState extends State<AnalogClock> {
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
                color: Colors.black,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    opacity: 0.6,
                    image: NetworkImage('https://images.wallpapersden.com/image/download/artistic-minimalist-hd-forest-new-art-2022_bWlna2yUmZqaraWkpJRmbmdlrWZlbWU.jpg')
                )
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
                          '${(dateTime.hour > 12) ? (dateTime.hour % 12).toString().padLeft(2, '0') : (dateTime.hour).toString().padLeft(2, '0')} : ${(dateTime.minute).toString().padLeft(2, '0')} : ${(dateTime.second).toString().padLeft(2, '0')}',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 52,
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
                    const SizedBox(height: 6),
                    Text(
                      '${days[dateTime.weekday - 1]}',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 120, bottom: 190),
                      height: 210,
                      width: 210,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 5,
                          color: Colors.white,
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          // TODO Dot
                          Container(
                            height: 13,
                            width: 13,
                            decoration: const BoxDecoration(
                                color: Colors.red, shape: BoxShape.circle),
                          ),
                          // TODO Angles
                          ...List.generate(
                            60,
                                (index) => Transform.rotate(
                              angle: ((index) * 6 * pi) / 180,
                              child: ((index) % 5 == 0)
                                  ? const VerticalDivider(
                                thickness: 3,
                                color: Colors.red,
                                endIndent: 185,
                              )
                                  : const VerticalDivider(
                                thickness: 2,
                                color: Colors.grey,
                                endIndent: 192,
                              ),
                            ),
                          ),
                          // TODO Hour
                          Transform.rotate(
                            angle: (dateTime.hour + (dateTime.minute / 60)) *
                                30 *
                                pi /
                                180,
                            child: const VerticalDivider(
                              thickness: 4,
                              color: Colors.red,
                              indent: 50,
                              endIndent: 95,
                            ),
                          ),
                          // TODO Minute
                          Transform.rotate(
                            angle: (dateTime.minute * 6 * pi) / 180,
                            child: const VerticalDivider(
                              thickness: 3,
                              color: Colors.white,
                              indent: 35,
                              endIndent: 98,
                            ),
                          ),
                          // TODO Second
                          Transform.rotate(
                            angle: (dateTime.second * 6 * pi) / 180,
                            child: const VerticalDivider(
                              thickness: 3,
                              color: Colors.grey,
                              indent: 25,
                              endIndent: 98,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: () {

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