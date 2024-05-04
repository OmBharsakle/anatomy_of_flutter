<h1 align="center">🔥 Anatomy Of Flutter 🔥</h1>

###

  

<h3 align="center">1. First Task</h3>

###

<h1 align="left"></h1>

###

<div align="center">
  <img height="550" src="https://raw.githubusercontent.com/OmBharsakle/anatomy_of_flutter/master/assets/images/01.png"  />
</div>

###
<div align="center">
<a href="https://github.com/OmBharsakle/anatomy_of_flutter/blob/master/lib/mycode1.dart">-> 📂 Go To Dart File 📂 <-</a>
</div>

###

###

<h1 align="left"></h1>

###

<h3 align="center">2. Second Task</h3>

###

<h1 align="left"></h1>

###

<div align="center">
  <img height="550" src="https://raw.githubusercontent.com/OmBharsakle/anatomy_of_flutter/master/assets/images/02.png"  />
</div>

###
<div align="center">
<a href="https://github.com/OmBharsakle/anatomy_of_flutter/blob/master/lib/mycode2.dart">-> 📂 Go To Dart File 📂 <-</a>
</div>

###

###

<h1 align="left"></h1>

###

<h3 align="center">3. Third Task</h3>

###

<h1 align="left"></h1>

###

<div align="center">
  <img height="550" src="https://raw.githubusercontent.com/OmBharsakle/anatomy_of_flutter/master/assets/images/03.png"  />
</div>

###
<div align="center">
<a href="https://github.com/OmBharsakle/anatomy_of_flutter/blob/master/lib/mycode3.dart">-> 📂 Go To Dart File 📂 <-</a>
</div>

###

###

<h1 align="left"></h1>

###

<h3 align="center">4. Four Task</h3>

###

<h1 align="left"></h1>

###

<div align="center">
  <img height="550" src="https://raw.githubusercontent.com/OmBharsakle/anatomy_of_flutter/master/assets/images/04.png"  />
</div>

###
<div align="center">
<a href="https://github.com/OmBharsakle/anatomy_of_flutter/blob/master/lib/mycode4.dart">📂 Go To Dart File 📂 <-</a>
</div>

###

###

<h1 align="left"></h1>

###

<h3 align="center">5. Five Task</h3>

###

<h1 align="left"></h1>

###

<div align="center">
  <img height="550" src="https://raw.githubusercontent.com/OmBharsakle/anatomy_of_flutter/master/assets/images/05.png"  />
</div>

###
<div align="center">
<a href="https://github.com/OmBharsakle/anatomy_of_flutter/blob/master/lib/mycode5.dart">-> 📂 Go To Dart File 📂 <-</a>
</div>

###

###

<h1 align="left"></h1>

###

<h3 align="center">6. Six Task</h3>

###

<h1 align="left"></h1>

###

<div align="center">
  <img height="550" src="https://raw.githubusercontent.com/OmBharsakle/anatomy_of_flutter/master/assets/images/06.png"  />
</div>

###
<div align="center">
<a href="https://github.com/OmBharsakle/anatomy_of_flutter/blob/master/lib/mycode6.dart">-> 📂 Go To Dart File 📂 <-</a>
</div>

###

###

<h1 align="left"></h1>

###

<h3 align="center">7. Seven Task</h3>

###

<h1 align="left"></h1>

###

<div align="center">
  <img height="550" src="https://raw.githubusercontent.com/OmBharsakle/anatomy_of_flutter/master/assets/images/07.png"  />
</div>

###
<div align="center">
<a href="https://github.com/OmBharsakle/anatomy_of_flutter/blob/master/lib/mycode7.dart">-> 📂 Go To Dart File 📂 <-</a>
</div>

###

###

<h1 align="left"></h1>

###

<h3 align="center">8. Eighth Task</h3>

###

<h1 align="left"></h1>

###

<div align="center">
  <img height="550" src="https://raw.githubusercontent.com/OmBharsakle/anatomy_of_flutter/master/assets/images/08.png"  />
</div>

###
<div align="center">
<a href="https://github.com/OmBharsakle/anatomy_of_flutter/blob/master/lib/mycode8.dart">-> 📂 Go To Dart File 📂 <-</a>
</div>

###

<h1 align="center"> 🔶🔸 5.2 Asynchronous Programming 🔸🔶 </h1>

# What is  Asynchronous Programming?

Asynchronous programming is a programming paradigm that allows tasks or operations to run independently and concurrently, without waiting for each other to complete before moving on to the next task. 

# What is Future Class ?

In Dart, a Future represents a value that may not be available yet. It encapsulates an asynchronous operation and provides a way to handle the result or error when it becomes available.  

# What is Duration class & Future.delayed() constructor with Example ?

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

# What is the Use of the async & await keyword?

In Flutter, async and await are used to perform asynchronous operations in a more readable and structured manner. They are part of the Dart language, on which Flutter is built.

## async keyword

The async keyword is used to mark a function as asynchronous.

## async keyword

The await keyword is used to pause the execution of an asynchronous function until a particular asynchronous operation is completed.

# What is Recursion ? With Example.

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

# What is Timer class with example ?

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

# What is Timer.periodic and use with Example?

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

###

<h1 align="left"> </h1>

###
