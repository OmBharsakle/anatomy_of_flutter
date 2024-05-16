import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Image_Picker extends StatefulWidget {
  const Image_Picker({super.key});

  @override
  State<Image_Picker> createState() => _Image_PickerState();
}

class _Image_PickerState extends State<Image_Picker> {
  ImagePicker imagePicker = ImagePicker();
  File? fileImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Image Picker',style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          SizedBox(height: 30,),
          Container(
            width: 370,
            height: 370,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black,),
              image: (fileImage != null)
                  ? DecorationImage(
                fit: BoxFit.cover,
                image: FileImage(fileImage!),
              )
                  : null,
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: () async {
                XFile? xFileImage = await imagePicker.pickImage(source: ImageSource.camera);
                setState(() {
                  if (xFileImage != null) {
                    fileImage = File(xFileImage!.path);
                  }
                });
              }, icon: Icon(Icons.camera_alt,size: 60,)),
              IconButton(onPressed: () async {
                XFile? xFileImage = await imagePicker.pickImage(source: ImageSource.gallery);
                setState(() {
                  if (xFileImage != null) {
                    fileImage = File(xFileImage!.path);
                  }
                });
              }, icon: Icon(Icons.image,size: 60,)),
            ],
          ),
          SizedBox(height: 30,),
          Container(
            width: 370,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
            ),
            alignment: Alignment.center,
            child: Text('Upload Me',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),),
          )
        ],
      ),
    );
  }
}
