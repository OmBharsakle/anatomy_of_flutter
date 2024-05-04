import 'package:flutter/material.dart';
void main()
{
  runApp(Buttons());
}

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow (
                  color: const Color(0xFF000000).withOpacity(0.16),
                  offset: const Offset(0.0, 3.0),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: OutlinedButton(onPressed: () {
            
            }, child: Text('Outlined Button')),
          ),
          Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow (
                  color: const Color(0xFF000000).withOpacity(0.16),
                  offset: const Offset(0.0, 3.0),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: ElevatedButton(onPressed: () {

            }, child: Text('Elevated Button')),
          ),
          Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow (
                  color: const Color(0xFF000000).withOpacity(0.16),
                  offset: const Offset(0.0, 3.0),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: TextButton(onPressed: () {

            }, child: Text('Text Button')),
          ),
          Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow (
                  color: const Color(0xFF000000).withOpacity(0.16),
                  offset: const Offset(0.0, 3.0),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: FloatingActionButton(onPressed: () {

            }, child:  Icon(Icons.add)),
          ),
        ],
      ),
    );
  }
}
