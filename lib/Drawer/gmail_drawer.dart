import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Gmail_Drawer extends StatefulWidget {
  const Gmail_Drawer({super.key});

  @override
  State<Gmail_Drawer> createState() => _Gmail_DrawerState();
}

class _Gmail_DrawerState extends State<Gmail_Drawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2e2f33),
      appBar: AppBar(
        backgroundColor: Color(0xff2b2b30),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Gamil',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
      drawer: Drawer(
        width: 310,
        backgroundColor: Color(0xff2e2f33),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 60, left: 20),
              width: double.infinity,
              height: 110,
              // color: Colors.black,
              child: Text(
                'Gamil',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            Divider(
              height: 1,
              color: Colors.grey.shade600,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                        icons.length,
                        (index) => InkWell(
                              onTap: () {
                                setState(() {
                                  Click = index;
                                });
                              },
                              child: ((index == 1) ||
                                      (index == 3) ||
                                      (index == 12) ||
                                      (index == 14))
                                  ? (Divider(
                                      height: 1,
                                      color: Colors.grey.shade600,
                                    ))
                                  : Icon_Name_Box(index),
                            ))),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container Icon_Name_Box(int index) {
    return Container(
      margin: EdgeInsets.only(bottom: 5, top: 5),
      width: 305,
      height: 55,
      decoration: (index == Click)
          ? BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
              color: Color(0xff5a4645),
            )
          : BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
      child: ListTile(
        leading: Icon(
          icons[index]['icon'],
          color: Colors.white,
        ),
        title: Text(
          icons[index]['name'],
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white),
        ),
        horizontalTitleGap: 30,
      ),
    );
  }
}

List icons = [
  {'icon': Icons.all_inbox_rounded, 'name': 'All Inboxes'},
  {},
  {'icon': Icons.inbox_rounded, 'name': 'Inbox'},
  {},
  {
    'icon': Icons.star_border_purple500_sharp,
    'name': 'Starred',
  },
  {'icon': Icons.access_time_rounded, 'name': 'Snoozed'},
  {'icon': Icons.label_important_outline_rounded, 'name': 'Important'},
  {'icon': Icons.send_outlined, 'name': 'Sent'},
  {'icon': Icons.drafts, 'name': 'drafts'},
  {'icon': Icons.mail_outlined, 'name': 'All Mail'},
  {'icon': Icons.warning_amber_rounded, 'name': 'Spam'},
  {'icon': Icons.delete_sweep_outlined, 'name': 'Trash'},
  {},
  {'icon': Icons.add, 'name': 'Create new'},
  {},
  {'icon': Icons.settings_outlined, 'name': 'Settings'},
];

var Click = 0;
