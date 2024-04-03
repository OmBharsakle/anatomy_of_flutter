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
          backgroundColor: Colors.yellow,
          centerTitle: true,
          leading: Icon(Icons.menu),
          title: const Text(
            'Flutter App',
            style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 2),
          ),
        ),
        body: const Center(
          child: Center(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: 'Red & White',
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.double,
                          decorationColor: Colors.yellow
                      )
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
