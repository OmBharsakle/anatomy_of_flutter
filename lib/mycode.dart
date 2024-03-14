import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor : Colors.black,
        body: Center(
          child: Text('Hello\n\n\n\n\n\nDart\n\n\n\n\n\nFlutter',
            style: TextStyle(fontSize: 30,color: Colors.red,decoration: TextDecoration.underline,decorationColor: Colors.yellow,fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

