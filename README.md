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

<h1></h1>

<h3 align="center">Timer App</h3>

<h1></h1>

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
