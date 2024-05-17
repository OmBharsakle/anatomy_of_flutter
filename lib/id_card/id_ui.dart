import 'package:flutter/material.dart';

import 'id_card.dart';
class Id_Ui extends StatefulWidget {
  const Id_Ui({super.key});

  @override
  State<Id_Ui> createState() => _Id_UiState();
}

class _Id_UiState extends State<Id_Ui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Id Ui'),
      ),
      body: Column(
        children: [
          Container(
            width: 415,
            height: 810,
            decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/idcard.jpg'),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 130,),
                CircleAvatar(
                  radius: 90,
                  backgroundImage: FileImage(fileImage!),
                ),
                SizedBox(height: 20,),
                Text('$Fname1 $Lname1',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 35),),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  alignment: Alignment.center,
                  child: Text('$position1',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30,10,30,30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading:  Text('ID No :',style: TextStyle(fontSize: 20),),
                        title:  Text('102520',style: TextStyle(fontSize: 20),),
                      ),
                      ListTile(
                        leading:  Text('Gender :',style: TextStyle(fontSize: 20),),
                        title:  Text('$gender',style: TextStyle(fontSize: 20),),
                      ),ListTile(
                        leading:  Text('Skill :',style: TextStyle(fontSize: 20),),
                        title:  Row(
                          children: [
                            ...List.generate(Hobby.length, (index) => Row(
                              children: [
                                Text('${Hobby[index]},',style: TextStyle(fontSize: 20),),
                              ],
                            ))
                          ],
                        ),
                      ),ListTile(
                        leading:  Text('E-mail :',style: TextStyle(fontSize: 20),),
                        title:  Text('$EmailName1',style: TextStyle(fontSize: 20),),
                      ),
                      ListTile(
                        leading:  Text('Phone :',style: TextStyle(fontSize: 20),),
                        title:  Text('$Numbername1',style: TextStyle(fontSize: 20),),
                      ),
                      // Text('Phone : 7490835410',style: TextStyle(fontSize: 22),),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
