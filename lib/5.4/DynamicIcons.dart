import 'package:flutter/cupertino.dart';
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
          title: const Text(
            'Dynamic Icons',
            style: TextStyle(
                color: Color(0xff616161),
                fontWeight: FontWeight.w600,
                letterSpacing: 1),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(5, (index) => Box(IconList[index]))
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(5, (index) => Box(IconList[5+index]))
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(5, (index) => Box(IconList[10+index]))
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(5, (index) => Box(IconList[15+index]))
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(4, (index) => Box(IconList[20+index]))
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(4, (index) => Box(IconList[15+index]))
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Box(IconData Iconame) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xFFF5F5F5),
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              spreadRadius: 5,
              blurStyle: BlurStyle.outer,
              blurRadius: 10,),
          ],),
        child: Icon(Iconame,size: 45,color:Color(0xff616161),),),
    );
  }
}

List IconList = [
  Icons.add,
  Icons.settings_backup_restore,
  Icons.arrow_back_ios,
  Icons.arrow_forward_ios,
  Icons.alarm,
  Icons.verified_user,
  Icons.account_circle,
  Icons.autorenew,
  Icons.shuffle,
  Icons.more,
  Icons.more_vert,
  Icons.open_in_full,
  Icons.call,
  Icons.search,
  Icons.send,
  Icons.stop,
  Icons.play_arrow,
  Icons.apps,
  Icons.settings,
  Icons.wifi_lock,
  Icons.login,
  Icons.downloading,
  Icons.delete,
  Icons.logout,
  Icons.medical_information,
];