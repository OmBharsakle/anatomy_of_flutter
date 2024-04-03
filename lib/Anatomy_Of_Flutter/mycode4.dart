import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

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
              letterSpacing: 2,
            ),
          ),
        ),
        body: Center(
          child: Text.rich(
            TextSpan(
              children: [
                const TextSpan(
                  text: '  RichText Helps To Create\n',
                  style: TextStyle(
                    fontSize: 27,
                    color: Colors.black45,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const TextSpan(
                  text: ' Highlighted \n',
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text: '             ',
                ),
                const TextSpan(
                  text: 'Clickable,',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.blue,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                WidgetSpan(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.green,
                        width: 2,
                      ),
                    ),
                    child:
                    const Text(
                      ' OutlinedText ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const TextSpan(
                  text: '\n           Say Hi To RichText',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black45,
                    fontWeight: FontWeight.w400,
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
