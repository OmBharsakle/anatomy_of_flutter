import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      home: Scaffold(
        backgroundColor: Color(0xffEEEEEE),
        appBar: AppBar(
          title: const Text(
            'Icons Editor',
            style: TextStyle(fontWeight: FontWeight.w600, letterSpacing: 1),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  MainContainer(),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    width: 380,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            spreadRadius: 5,
                            blurRadius: 5,
                          ),
                        ]),
                    child: Center(
                      child: Text(
                        'Select Color',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    width: 380,
                    height: 120,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            spreadRadius: 5,
                            blurRadius: 5,
                          ),
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                              children: List.generate(
                                  ColorList.length,
                                      (index) => InkWell(
                                      onTap: () {
                                        setState(() {
                                          MyColor = ColorList[index];
                                        });
                                      },
                                      child:
                                      ColorContainer(ColorList[index])))),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    width: 380,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            spreadRadius: 5,
                            blurRadius: 5,
                          ),
                        ]),
                    child: Center(
                      child: Text(
                        'Select Icons',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    width: 380,
                    height: 120,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            spreadRadius: 5,
                            blurRadius: 5,
                          ),
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                              children: List.generate(
                                  IconList.length,
                                      (index) => InkWell(
                                      onTap: () {
                                        setState(() {
                                          MyIcone = IconList[index];
                                        });
                                      },
                                      child: IconContainer(IconList[index])))),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container MainContainer() {
    return Container(
      width: 380,
      height: 340,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              spreadRadius: 5,
              blurRadius: 5,
            ),
          ]),
      child: Center(
        child: Icon(
          MyIcone,
          size: 100,
          color: MyColor,
        ),
      ),
    );
  }

  Container ColorContainer(Color NewColor) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      height: 100,
      width: 100,
      decoration:
      BoxDecoration(shape: BoxShape.circle, color: NewColor, boxShadow: [
        BoxShadow(
          color: Colors.black26,
          spreadRadius: 1,
          blurRadius: 5,
        ),
      ]),
    );
  }

  Container IconContainer(IconData NewIcon) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xffEEEEEE),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              spreadRadius: 1,
              blurRadius: 1,
            ),
          ]),
      child: Center(
          child: Icon(
            NewIcon,
            size: 40,
            color: MyColor,
          )),
    );
  }
}

IconData? MyIcone;

List IconList = [
  Icons.add,
  Icons.album,
  Icons.arrow_back_ios_rounded,
  Icons.arrow_back_ios_new_rounded,
  Icons.alarm,
  Icons.call,
  Icons.search,
];

Color? MyColor;

List ColorList = [
  Colors.red,
  Colors.yellow,
  Colors.lightBlue,
  Colors.blueAccent,
  Colors.amber,
  Colors.purple,
];
