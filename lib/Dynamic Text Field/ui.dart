import 'package:anatomy_of_flutter/Dynamic%20Text%20Field/Dynamic_Text_Field.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(saveData.toString(),style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
          ],
        ),
      ),
    );
  }
}
