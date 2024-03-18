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
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text(
            'RichText Example',
            style: TextStyle(
                color: Colors.white,
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
                      text: '  RichText Helps To Create\n',
                      style: TextStyle(
                          fontSize: 27,
                          color: Colors.black45,
                          fontWeight: FontWeight.w400
                      )),
                  TextSpan(
                      text: ' Highlighted \n',
                      style: TextStyle(
                        fontSize: 60,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      )),
                  TextSpan(
                    text: '             ',
                  ),
                  TextSpan(
                    text: 'Clickable,',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue,
                        fontWeight: FontWeight.w400
                    ),),
                  TextSpan(

                      text: 'OutlinedText\n',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.green,
                          fontWeight: FontWeight.w400
                      )),
                  TextSpan(
                      text: '                  Say Hi To RichText',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black45,
                          fontWeight: FontWeight.w400)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
