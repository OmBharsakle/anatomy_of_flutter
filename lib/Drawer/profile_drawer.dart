import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile_Drawer extends StatefulWidget {
  const Profile_Drawer({super.key});

  @override
  State<Profile_Drawer> createState() => _Profile_DrawerState();
}

class _Profile_DrawerState extends State<Profile_Drawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xff9A8DDA),
        title: Text('Profile Drawer',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
      ),
      drawer: Drawer(
        width: 320,
        child: Column(
          children: [
            Container(
              width: 320,
              height: 260,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xffD7A0F9), Color(0xff9A8DDA)])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: NetworkImage(
                            'https://lh3.googleusercontent.com/p/AF1QipNy0VnKWvOA5Ml3R_m75uJ1Ip50d0wP968E1MXK=w768-h768-n-o-v1'),
                      ),
                      SizedBox(width: 8,),
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/736x/33/ba/df/33badf7bd7e2bd56b21e3d972fe3ed5a.jpg'),
                      ),
                      SizedBox(width: 20,)
                    ],
                  ),
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/149371245?v=4'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "OMG",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 25),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      "contact@omgcreation.in",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.grey.shade800),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: List.generate(IconsList.length, (index) => ListTile(
                  leading:  Icon(IconsList[index]['icon']),
                  title: Text(
                   '${IconsList[index]['name']}',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 22,
                        color: Colors.grey.shade800),
                  ),
                  horizontalTitleGap: 30,
                  contentPadding: const EdgeInsets.only(left: 50, top: 25)),),

            )
          ],
        ),
      ),
    );
  }
}


List IconsList = [
{'icon': Icons.notification_add_rounded, 'name': 'Notification'},
{'icon': Icons.reviews_rounded, 'name': 'Reviews'},
{'icon': Icons.payment_rounded, 'name': 'Payments'},
{'icon': Icons.settings, 'name': 'Settings'},
];