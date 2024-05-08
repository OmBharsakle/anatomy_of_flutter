import 'dart:async';

import 'package:flutter/material.dart';

void main()
{
  runApp(Clock());
}

class Clock extends StatefulWidget {
  const Clock({super.key});

  @override
  State<Clock> createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        dateTime = DateTime.now();
      });
    });
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black,
            image: DecorationImage(
                fit: BoxFit.cover,
                opacity: 0.6,
                image: NetworkImage('https://images.wallpapersden.com/image/download/artistic-minimalist-hd-forest-new-art-2022_bWlna2yUmZqaraWkpJRmbmdlrWZlbWU.jpg')
            )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Alaram',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 25),),
              Column(
                children: [
                  Icon(Icons.access_alarm_sharp,color: Colors.white,size: 50,),
                  Text('${(dateTime.hour > 12) ? (dateTime.hour % 12).toString().padLeft(2, '0') : (dateTime.hour).toString().padLeft(2, '0')} : ${(dateTime.minute).toString().padLeft(2, '0')}',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 65),),
                  Text('${days[dateTime.weekday - 1]}',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 25),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
                  onPressed: () {

                  }, child: Text(' Soons ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 20))),
                  SizedBox(width: 50,),
                  ElevatedButton(onPressed: () {

                  }, child: Text('Dismiss',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 20))),
                ],
              )
            ],
          ),
        ),
      ),
    );
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