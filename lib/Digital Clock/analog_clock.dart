import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

class AnalogClock extends StatefulWidget {
  const AnalogClock({super.key});

  @override
  State<AnalogClock> createState() => _ClockState();
}

class _ClockState extends State<AnalogClock> {
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
          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text('Alaram',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 25),),
          //     Column(
          //       children: [
          //         Icon(Icons.access_alarm_sharp,color: Colors.white,size: 50,),
          //         Text('${(dateTime.hour > 12) ? (dateTime.hour % 12).toString().padLeft(2, '0') : (dateTime.hour).toString().padLeft(2, '0')} : ${(dateTime.minute).toString().padLeft(2, '0')}',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 65),),
          //         Text('${days[dateTime.weekday - 1]}',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 25),),
          //       ],
          //     ),
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         ElevatedButton(
          //             style: ButtonStyle(
          //               backgroundColor: MaterialStateProperty.all(Colors.white),
          //             ),
          //             onPressed: () {
          //
          //             }, child: Text(' Soons ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 20))),
          //         SizedBox(width: 50,),
          //         ElevatedButton(onPressed: () {
          //
          //         }, child: Text('Dismiss',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 20))),
          //       ],
          //     )
          //   ],
          // ),
          child: Container(
            width: double.infinity,
            height: 300,
            child: Stack(
              children: [
                Center(
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black,width: 2)
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black,width: 2)
                    ),
                  ),
                ),
                Center(
                  child: Transform.rotate(
                    angle: (dateTime.second*6)*pi/180,
                    child: VerticalDivider(
                      color: Colors.black,
                      thickness: 2,
                      width: 2,
                      indent: 270,
                      endIndent: 370,
                    ),
                  ),
                ),
                Center(
                  child: Transform.rotate(
                    angle: (dateTime.minute*6)*pi/180,
                    child: VerticalDivider(
                      color: Colors.black,
                      thickness: 3,
                      width: 3,
                      indent: 270,
                      endIndent: 370,
                    ),
                  ),
                ),
                Center(
                  child: Transform.rotate(
                    angle: (dateTime.hour*30)*pi/180,
                    child: VerticalDivider(
                      color: Colors.black,

                      thickness: 3,
                      width: 3,
                      indent: 270,
                      endIndent: 370,
                    ),
                  ),
                ),
              ],
            ),
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