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
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: const Text(
            'BOLT',
            style: TextStyle(fontWeight: FontWeight.w600, letterSpacing: 15,color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Color(0xff212121),
        ),
        body: Center(
          child: Container(
            width: 90,
            height: double.infinity,
            color: Color(0xff212121),
            child: const Center(
              child: Text('⚡',
                  style: TextStyle(fontSize: 80)),
            ),
          ),
        ),
      ),
    );
  }
}
