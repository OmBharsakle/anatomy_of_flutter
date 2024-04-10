import 'dart:io';

import 'package:flutter/material.dart';

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
          title: Text(
            'Map',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: List.generate(
                IconNameList.length,
                    (index) => RowLine(
                    Name: IconNameList[index]['name'],
                    IconName: IconNameList[index]['icon'])),
          ),
        ),
      ),
    );
  }

  Row RowLine({required String Name, required IconData IconName}) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            width: 411,
            height: 90,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Name,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19),
                  ),
                  Icon(IconName),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

List IconNameList = [
  {
    'name': 'Exit',
    'icon': Icons.exit_to_app
  },
  {
    'name': 'Play',
    'icon': Icons.play_arrow
  },
  {
    'name': 'Pause',
    'icon': Icons.pause
  },
  {
    'name': 'Stop',
    'icon': Icons.stop
  },
  {
    'name': 'Close',
    'icon': Icons.close
  },
  {
    'name': 'Delete',
    'icon': Icons.delete
  },
  {
    'name': 'E-mail',
    'icon': Icons.mail
  },
  {
    'name': 'Setting',
    'icon': Icons.settings
  },
  {
    'name': 'Home',
    'icon': Icons.home
  },
];
