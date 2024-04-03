import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.red,
          centerTitle: true,
          title: const Text(
            'Red & White',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 2),
          ),
        ),
        body:  const Center(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '              G',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3

                  ),
                ),
                TextSpan(
                  text: 'R',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                  ),
                ),
                TextSpan(
                  text: 'APHICS\n',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,

                  ),
                ),
                TextSpan(
                  text: '     FLUTT',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 4
                  ),
                ),
                TextSpan(
                  text: 'E',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 4
                  ),
                ),
                TextSpan(
                  text: 'R\n',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3
                  ),
                ),
                TextSpan(
                  text: '            AN',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3
                  ),
                ),
                TextSpan(
                  text: 'D',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3
                  ),
                ),
                TextSpan(
                  text: 'ROID\n',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3
                  ),
                ),
                TextSpan(
                  text: '    DESIGN',
                  style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3
                  ),
                ),
                TextSpan(
                  text: ' & ',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3
                  ),
                ),
                TextSpan(
                  text: 'DEVELOP\n',
                  style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3
                  ),
                ),
                TextSpan(
                  text: '               W',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3
                  ),
                ),
                TextSpan(
                  text: 'EB\n',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3
                  ),
                ),
                TextSpan(
                  text: '           FAS',
                  style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3
                  ),
                ),
                TextSpan(
                  text: 'H',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3
                  ),
                ),
                TextSpan(
                  text: 'ION\n',
                  style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3
                  ),
                ),
                TextSpan(
                  text: '     ANIMAT',
                  style: TextStyle(
                      color: Colors.greenAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3
                  ),
                ),
                TextSpan(
                  text: 'I',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3
                  ),
                ),
                TextSpan(
                  text: 'ON\n',
                  style: TextStyle(
                      color: Colors.greenAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3
                  ),
                ),
                TextSpan(
                  text: '                I',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3
                  ),
                ),
                TextSpan(
                  text: 'T',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3
                  ),
                ),
                TextSpan(
                  text: 'A-CS+\n',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3
                  ),
                ),
                TextSpan(
                  text: '          GAM',
                  style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3
                  ),
                ),
                TextSpan(
                  text: 'E',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3
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
