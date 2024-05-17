import 'package:anatomy_of_flutter/Drawer/gmail_drawer.dart';
import 'package:flutter/material.dart';

class Dynamic_Text_Field extends StatefulWidget {
  const Dynamic_Text_Field({super.key});

  @override
  State<Dynamic_Text_Field> createState() => _Dynamic_Text_FieldState();
}

class _Dynamic_Text_FieldState extends State<Dynamic_Text_Field> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic Text Field'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(TextEditingControllerList.length, (index) => ListTile(
              trailing: IconButton(onPressed: () {
                setState(() {
                  TextEditingControllerList.removeAt(index);
                });
                }, icon: Icon(Icons.highlight_remove_rounded,size: 30,)),
              title: TextField(
                controller: TextEditingControllerList[index],
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide()
                    )
                ),
              ),
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          TextEditingController txtController = TextEditingController();
          setState(() {
            TextEditingControllerList.add(txtController);
            for(int i=1; i<TextEditingControllerList.length; i++)
              {
                SaveData = SaveData + " " + TextEditingControllerList[i].text;
              }
          });
          print('$SaveData ${TextEditingControllerList.length}');
        },
        child: Icon(Icons.add_circle_outline_rounded),
      ),
    );
  }
}

var SaveData;

TextEditingController txtController = TextEditingController();

List<TextEditingController> TextEditingControllerList = [
  txtController
];