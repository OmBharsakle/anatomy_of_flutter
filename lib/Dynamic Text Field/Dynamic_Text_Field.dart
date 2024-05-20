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
        title: const Text('Dynamic Text Field'),
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
                }, icon: const Icon(Icons.highlight_remove_rounded,size: 30,)),
              title: TextField(
                controller: TextEditingControllerList[index],
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide()
                    )
                ),
              ),
            ))
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
        FloatingActionButton(
          onPressed: () {
            TextEditingController txtController = TextEditingController();
            setState(() {
              TextEditingControllerList.add(txtController);
              // SaveData='';
            //   for(int i=0; i<TextEditingControllerList.length; i++)
            //   {
            //     SaveData.add(TextEditingControllerList[i].text);
            //   }
            });
            // print('$SaveData ${TextEditingControllerList.length}');
          },
          child: const Icon(Icons.add_circle_outline_rounded),
        ),
        const SizedBox(width: 20,),
        FloatingActionButton(
          onPressed: () {
            TextEditingController txtController = TextEditingController();
            setState(() {
              saveData=[];
              for(int i=0; i<TextEditingControllerList.length; i++)
              {
                if(TextEditingControllerList[i].text!='')
                  {
                saveData.add(TextEditingControllerList[i].text);

                  }
                    // saveData='$saveData\n${TextEditingControllerList[i].text}';
              }
              Navigator.of(context).pushNamed('/view');
              print(saveData.length);
            });
          },
          child: const Icon(Icons.arrow_forward_ios_rounded),
        )
      ],),
    );
  }
}

var saveData=[];

TextEditingController txtController = TextEditingController();

List<TextEditingController> TextEditingControllerList = [
  txtController
];