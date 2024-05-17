import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'id_ui.dart';

class Id_Card extends StatefulWidget {
  const Id_Card({super.key});

  @override
  State<Id_Card> createState() => _Id_CardState();
}

class _Id_CardState extends State<Id_Card> {

  ImagePicker imagePicker = ImagePicker();


  var Fname = TextEditingController();
  var Lname = TextEditingController();
  var EmailName = TextEditingController();
  var position = TextEditingController();
  var Numbername = TextEditingController(text: '+91 ');


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Id Card',style: TextStyle(fontWeight: FontWeight.w600),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Text('Profile Image',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(onTap: () async {
                      XFile? xFileImage = await imagePicker.pickImage(source: ImageSource.camera);
                      setState(() {
                        if (xFileImage != null) {
                          fileImage = File(xFileImage!.path);
                        }
                      });
                    },
                      child: CircleAvatar(
                        radius: 70,
                        backgroundImage: (fileImage != null) ? FileImage(fileImage!): null,
                      ),
                    ),
                  ],
                )
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(child: TextField(
                    controller: Fname,
                    decoration: InputDecoration(
                        label: Text('First Name'),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,width: 1.5)
                        )
                    ),
                  ),
                    ),
                  SizedBox(width: 10,),
                  Expanded(child: TextField(
                    controller: Lname,
                    decoration: InputDecoration(
                        label: Text('Last Name'),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,width: 1.5)
                        )
                    ),
                  ),)
                ],
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: EmailName,
                decoration: InputDecoration(
                    label: Text('Email'),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,width: 1.5)
                    )
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: position,
                decoration: InputDecoration(
                    label: Text('Position'),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,width: 1.5)
                    )
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: Numbername,
                decoration: InputDecoration(
                  label: Text('Mobile Number'),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black,width: 1.5)
                  )
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text('Gender',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),),
              RadioListTile(title: Text('Male'),value: 'Male', groupValue: gender, onChanged: (value) {
                setState(() {
                  gender=value!;
                });
              },),
              RadioListTile(title: Text('Female'),value: 'Female', groupValue: gender, onChanged: (value) {
                setState(() {
                  gender=value!;
                });
              },),
              RadioListTile(title: Text('Others'),value: 'Others', groupValue: gender, onChanged: (value) {
                setState(() {
                  gender=value!;
                });
              },),
              Text('Hobby\'s',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),),
              CheckboxListTile(title: Text('C Language'),value: c, onChanged: (value) {
                setState(() {
                  c=value!;
                  if(value)
                  {
                    Hobby.add('C');
                  }
                  else
                  {
                    Hobby.remove('C');
                  }
                  print(Hobby);
                });
          
              },),
          
              CheckboxListTile(title: Text('Dart Language'),value: dart, onChanged: (value) {
                setState(() {
                  dart=value!;
                  if(value)
                  {
                    Hobby.add('Dart');
                  }
                  else
                  {
                    Hobby.remove('Dart');
                  }
                  print(Hobby);
                });
              },),
              CheckboxListTile(title: Text('Flutter Developer'),value: flutter, onChanged: (value) {
                setState(() {
                  flutter=value!;
                  if(value)
                    {
                      Hobby.add('Flutter');
                    }
                  else
                    {
                      Hobby.remove('Flutter');
                    }
                  print(Hobby);
                });
              },),
              Center(
                child: ElevatedButton(onPressed: ()
                {
                  setState(() {
                    Fname1 = Fname.text.toString();
                    Lname1 = Lname.text.toString();
                    position1 = position.text.toString();
                    EmailName1 = EmailName.text.toString();
                    Numbername1 = Numbername.text.toString();
                  });
                  
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Id_Ui(),));
                  print('$Fname1 $Lname1 $Numbername1 $gender $Hobby');
                }, child: Text('Submit')),
              ),
              SizedBox(height: 15,)
            ],
          ),
        ),
      ),
    );
  }
}

String? gender;
bool c=false;
bool dart=false;
bool flutter=false;
var position1;
var Fname1;
var Lname1;
var EmailName1;
var Numbername1;

List Hobby = [];

File? fileImage;