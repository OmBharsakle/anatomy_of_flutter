<h1 align="center"></h1>

<h3 align="center">Anatomy Of Flutter</h3>

###

<h1 align="left"></h1>

###

<div align="center">
  <img height="550" src="https://raw.githubusercontent.com/OmBharsakle/anatomy_of_flutter/master/assets/images/01.png"  />
  <img height="550" src="https://raw.githubusercontent.com/OmBharsakle/anatomy_of_flutter/master/assets/images/02.png"  />
  <img height="550" src="https://raw.githubusercontent.com/OmBharsakle/anatomy_of_flutter/master/assets/images/03.png"  />
  <img height="550" src="https://raw.githubusercontent.com/OmBharsakle/anatomy_of_flutter/master/assets/images/05.png"  />
  <img height="550" src="https://raw.githubusercontent.com/OmBharsakle/anatomy_of_flutter/master/assets/images/06.png"  />
  <img height="550" src="https://raw.githubusercontent.com/OmBharsakle/anatomy_of_flutter/master/assets/images/07.png"  />
</div>

<h1></h1>

<h3 align="center"> 5.1 Flutter Buttons</h3>

<h1></h1>
<div align="center">
  <img height="550" src="https://github.com/OmBharsakle/anatomy_of_flutter/assets/149371245/0e34fd89-12f5-4cb2-a966-604d6256c620"  />
</div>


<h1></h1>

<h3 align="center"> 5.2 Asynchronous Programming</h3>

<h1></h1>

# 1. What is  Asynchronous Programming?

Asynchronous programming is a programming paradigm that allows tasks or operations to run independently and concurrently, without waiting for each other to complete before moving on to the next task. 

# 2. What is Future Class ?

In Dart, a Future represents a value that may not be available yet. It encapsulates an asynchronous operation and provides a way to handle the result or error when it becomes available.  

# 3. What is Duration class & Future.delayed() constructor with Example ?

## Duration Calss
The Duration class represents a span of time. It allows you to specify time durations in terms of hours, minutes, seconds, and milliseconds.    

### Example
```javascript
import 'dart:async';
import 'dart:io';

void main(){
  Timer(
    Duration(seconds: 3),
    (){
      print("Hello Dart");
    }
  );
}
```

## Future.delayed()
Future.delayed() is a method in Dart that creates a future representing a delayed computation. It allows you to schedule a task to be executed after a specified duration of time has passed.  

### Example
```javascript
import 'dart:async';
import 'dart:io';

void main(){
  Future.delayed(
    Duration(seconds: 3),
    (){
      print("Hello Dart");
    }
  );
}
```

# 4. What is the Use of the async & await keyword?

In Flutter, async and await are used to perform asynchronous operations in a more readable and structured manner. They are part of the Dart language, on which Flutter is built.

## async keyword

The async keyword is used to mark a function as asynchronous.

## async keyword

The await keyword is used to pause the execution of an asynchronous function until a particular asynchronous operation is completed.

# 5. What is Recursion ? With Example.

When function call itself it's called recursion

### Example
```javascript
import 'dart:async';
import 'dart:io';

void main(){
  Timer.periodic(Duration(seconds: 3), (timer) {
    print("Hello Dart");
   });
}
```

# 6. What is Timer class with example ?

The Timer class is used to create a one-time or periodic timer. It allows you to schedule a callback function to be executed after a specified duration.

### Example
```javascript
import 'dart:async';
import 'dart:io';

void main(){
  Timer(Duration(seconds: 5), () {
    print("Hello Ankit");
  });
}
```

# 7. What is Timer.periodic and use with Example?

Timer.periodic is a constructor in the Timer class in Dart that creates a periodic timer. It repeatedly calls a callback function at a specified interval until canceled.

### Example
```javascript
import 'dart:async';
import 'dart:io';

void main(){
  Timer.periodic(Duration(seconds: 3), (timer) {
    print("Hello Dart");
   });
}
```

<h1></h1>

<h3 align="center"> 5.3 Digital Clock</h3>

<h1></h1>

<div align="center">
  <img height="550" src="https://github.com/OmBharsakle/anatomy_of_flutter/assets/149371245/3ad46ed3-b23f-44d9-9f37-6b5458022792"  />
</div>

<h1></h1>

<h3 align="center">5.4 Analogue Clock</h3>

<h1></h1>

<div align="center">
  <img height="550" src="https://github.com/OmBharsakle/anatomy_of_flutter/assets/149371245/39e0cf70-ea52-43fd-91ca-4f51328b726d" />
</div>

![image]()

<h1></h1>

<h3 align="center">Timer App</h3>

<h1></h1>

<div align="center">
  <img height="550" src="https://github.com/OmBharsakle/anatomy_of_flutter/assets/149371245/77046018-4fd7-4449-be96-e68c96fcc0ea"/>


https://github.com/OmBharsakle/anatomy_of_flutter/assets/149371245/9b3dc688-6a83-497c-94cc-bb8b90374aad





</div> 

<h1></h1>

<h3 align="center">Resume App Daily Task</h3>

<h1></h1>

# What is List and Map ?
## List  (fixed-length & growable) :

- ```List is collection of multiple values which can have multiple datatype.``` 
- List is an ordered collection of values, which contains index values to access it's inner attributes.
- List have indexes like arrays.
- List can be created using '[]'.

### How to declration List :

- ```Syntax : ``` List variableName = [Values];

### Example
```
void main() {
  
    List name = ["OMG", "SKY", "CREATION", "OMGCREATION"];

    print(name[0]);
}
```

#### To know length of List :
```
  void main() {
    List name = ["OMG", "SKY", "CREATION", "OMGCREATION"];
  
    print(name.length);
}
```

#### To add up :
```
  void main() {
    List name = ["OMG", "SKY", "CREATION", "OMGCREATION"];
  
    print(name[0]);
  
    name.add(10);
  
    print(name);
}
```

#### To add Multiple values :
```
  void main() {

   List name = ["OMG", "SKY", "CREATION", "OMGCREATION"];
  
    print(name[0]);
  
    name.addAll(['OMG2', 40, 90]);
  
    print(name);
}
```

#### To Insert to value :
```
  void main() {
   List name = ["OMG", "SKY", "CREATION", "OMGCREATION"];

    print(name[0]);

    name.insert(2, 50);

    print(name);
}
```

#### To Insert Multiple values :
```
  void main() {
    List name = ["OMG", "SKY", "CREATION", "OMGCREATION"];
  
    print(name[0]);
  
    name.insertAll(2, [1, 2, 3, 4]);
  
    print(name);
}
```

#### To know the index of the list Value :
```
  void main() {
  List name = ["OMG", "SKY", "CREATION", "OMGCREATION"];
  
    print(name[0]);
  
    int i = name.indexOf("Jaynesh");
  
    print(i);
}
```

#### To Remove a Value :
```
  void main() {
   List name = ["OMG", "SKY", "CREATION", "OMGCREATION"];
  
    print(name[0]);
  
    name.remove("B");
  
    print(name);
}
```

#### To Remove a value for Index :
```
  void main() {
  List name = ["OMG", "SKY", "CREATION", "OMGCREATION"];
  
    print(name[0]);
  
    name.removeAt(3);
  
    print(name);
}

```

#### To Reverse a List :
```
  void main() {
    List name = ["OMG", "SKY", "CREATION", "OMGCREATION"];
  
    print(name[0]);
  
    print(name.reversed.toList());
}
```

#### To Show Datatype :
```
  void main() {
    List name = ["OMG", "SKY", "CREATION", "OMGCREATION"];
  
    print(name[0]);
  
    print(name.runtimeType);
}
```

## Generics   

- Generics will be used to fix the datatype in the list.
- fix any one data type in the collection data types.
- it can be applied to either data types, value or both.
- ``` Example : ``` List <int> number = [10,20,30,40,50];

### Example

```
import 'dart:io';

  void main() {
    List <String> name = [];

    print("Enter number of Name : ");
    int n = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < n; i++) {
      print("Enter Name : ");
      String val = stdin.readLineSync()!;
      name.add(val);
    }

    print(name);
  }
```
## Map

- ```Map is collection of values. Map is store data in key value pair. which can have different datatype.``` 
- Map can be created using '{}'.

### syntax :
```
Map mapName = {
  key1 : value1, 
  key2 : value2, 
  ... 
  keyN : valueN, 
  };
```
### Example :
``` 
void main() {
    Map emp = {
      'name': "Sanju",
      'age': 18,
      'per': 79.23,
      'salary': 89000,
    };
    
    emp.forEach((key, value) {
      print("${key} : ${value}");
    });
  }
```

### List of Map :
``` 
void main() {
 
  List myData = [
    {
      'name': "OMG",
      'age': 20,
      'per': 79.23,
      'salary': 100000,
    },
    {
      'name': "Ankit",
      'age': 20,
      'per': 80.23,
      'salary': 10000,
    },
    {
      'name': "Hiren",
      'age': 18,
      'per': 85.23,
      'salary': 500000,
    }
  ];

  myData.forEach((e) {
    e.forEach((key, val) {
      print("${key} : ${val}");
    });
    print("");
  });
}
```
###

# Status Bar :
## In Build Context (Global) : 
```
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.green),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}
```

## In AppBar :
```
appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        toolbarHeight: 80,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.green
        )
      ),
```

# Device Orientation :
```
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.green),
    );
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.routes,
    );
  }
}
```

<h1></h1>

<h3 align="center">Login Page UI</h3>

<h1></h1>
<div align="center">
  <img height="550" src="https://github.com/OmBharsakle/anatomy_of_flutter/assets/149371245/6b31c503-44a5-4a87-ac09-92fc66d85690"/>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <img height="550" src="https://github.com/OmBharsakle/anatomy_of_flutter/assets/149371245/e558d169-fb82-4b93-b8b8-af3f820add29"/>
</div>

<h1></h1>

<h3 align="center">Gmail Drawer</h3>

<h1></h1>
<div align="center">
  <img height="550" src="https://github.com/OmBharsakle/anatomy_of_flutter/assets/149371245/e64d62e2-903e-42ac-9f05-69bcdac28da2"/>
</div>

<h1></h1>

<h3 align="center">Google Login Page With Validation</h3>

<h1></h1>
<div align="center">
  <img height="550" src="https://github.com/OmBharsakle/anatomy_of_flutter/assets/149371245/889adc45-1b81-4a61-846b-9781b54bb11e"/>
  <img height="550" src="https://github.com/OmBharsakle/anatomy_of_flutter/assets/149371245/56fa16cb-db98-4d56-821f-df59dc6232d6"/>
  <img height="550" src="https://github.com/OmBharsakle/anatomy_of_flutter/assets/149371245/5d25bce2-c9e6-49cf-aed0-d8fda4049df3"/>
  

https://github.com/OmBharsakle/anatomy_of_flutter/assets/149371245/b8d20312-dc86-48c2-a78c-1698e63835a9


</div> 

<h1></h1>

<h3 align="center">Image Picker</h3>

<h1></h1>

<div align="center">
  <img height="550" src="https://github.com/OmBharsakle/anatomy_of_flutter/assets/149371245/6f605430-bb8c-4876-9467-37129c511ca5"/>
  <img height="550" src="https://github.com/OmBharsakle/anatomy_of_flutter/assets/149371245/05d4be6e-b953-47c9-98d9-df7824bc2f93"/>



https://github.com/OmBharsakle/anatomy_of_flutter/assets/149371245/4d54a001-5ef0-4f75-8397-810d1754e7a7



</div> 

<h1></h1>

<h3 align="center">Id Card</h3>

<h1></h1>

<div align="center">
  <img height="550" src="https://github.com/OmBharsakle/anatomy_of_flutter/assets/149371245/eb191af9-4dce-44a8-a5da-978101c102ac"/>
  <img height="550" src="https://github.com/OmBharsakle/anatomy_of_flutter/assets/149371245/7eb96729-c922-4a44-bcbb-277d098c9105"/>


https://github.com/OmBharsakle/anatomy_of_flutter/assets/149371245/fc13c276-cc7f-4e31-a8e5-a82d3676fc5a




</div> 


<h1></h1>

<h3 align="center">Dynamic Text Field</h3>

<h1></h1>

<div align="center">
  <img height="550" src="https://github.com/OmBharsakle/anatomy_of_flutter/assets/149371245/066cd8d9-1d5f-46d4-910f-01d2fade7580"/>
  <img height="550" src="https://github.com/OmBharsakle/anatomy_of_flutter/assets/149371245/a8874c51-64e5-4090-becf-2848483f050d"/>


https://github.com/OmBharsakle/anatomy_of_flutter/assets/149371245/33748a53-da6c-4bf4-ae40-ba89b518fbaa


</div> 


<h1></h1>

<h3 align="center">Invoice Generator</h3>

<h1></h1>

<div align="center">
  <img height="550" src="https://github.com/OmBharsakle/anatomy_of_flutter/assets/149371245/c33e112f-da11-45f2-ba3f-bf0a27dcdf18"/>
  <img height="550" src="https://github.com/OmBharsakle/anatomy_of_flutter/assets/149371245/80d8fdb7-7663-4a7d-9001-567a9677e20a"/>


https://github.com/OmBharsakle/anatomy_of_flutter/assets/149371245/c703a3b7-e180-4f7c-93d2-46930c2d81ba



</div> 



