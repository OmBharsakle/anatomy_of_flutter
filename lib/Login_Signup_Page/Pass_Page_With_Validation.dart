import 'package:anatomy_of_flutter/Login_Signup_Page/successfully.dart';
import 'package:flutter/material.dart';
class Pass_Page_With_Validation extends StatefulWidget {
  const Pass_Page_With_Validation({super.key});

  @override
  State<Pass_Page_With_Validation> createState() => _Pass_Page_With_ValidationState();
}

class _Pass_Page_With_ValidationState extends State<Pass_Page_With_Validation> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> fromkey = GlobalKey();
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 1000,
              height: 350,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5.0,
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://cdn4.iconfinder.com/data/icons/logos-brands-7/512/google_logo-google_icongoogle-512.png'))),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Welcome',
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: 300,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black)
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.person),
                                  Text(
                                    'ombharsakle418@gmail.com',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Icon(Icons.arrow_drop_down)
                                ],
                              ),
                            )
                          ],
                        )),
                    Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 60,),
                            Form(
                              key: fromkey,
                              child: TextFormField(
                                obscureText: hide,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Password is required';
                                  }
                                  if (!RegExp(r'[a-z]').hasMatch(value)) {
                                    return 'Password must contain at least one lowercase letter';
                                  }
                                  if (!RegExp(r'[A-Z]').hasMatch(value)) {
                                    return 'Password must contain at least one uppercase letter';
                                  }
                                  if (!RegExp(r'\d').hasMatch(value)) {
                                    return 'Password must contain at least one number';
                                  }
                                  if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
                                    return 'Password must contain at least one special character';
                                  }
                                  if (value.length < 8) {
                                    return 'Password must be at least 8 characters';
                                  }
                                },
                                decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.blue,width: 2)
                                    ),
                                    // labelStyle: TextStyle(color: Colors.blue),
                                    label: Text('Enter Your Password',),
                                    hintStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                        borderRadius: BorderRadius.circular(8))),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Checkbox(activeColor: Colors.blue,checkColor: Colors.white,value: hide, onChanged: (value) {
                                  setState(() {
                                    hide=!hide;
                                    // store=!store;
                                  });
                                },),
                                Text('Show password',style: TextStyle(
                                  // color: Colors.blue,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),),
                              ],
                            ),
                            SizedBox(height: 35,),

                            SizedBox(height: 40,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(onPressed: () {

                                }, child: Text('Forgot password?',style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),),),
                                SizedBox(width: 10,),
                                ElevatedButton( style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(Colors.blue),
                                ),onPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
                                    Text('Login Successfull!'),
                                    TextButton(onPressed: () {
                                      
                                    }, child: Text('Undo'))
                                  ],)));
                                  bool res = fromkey.currentState!.validate();
                                  if(res)
                                  {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Successfully(),));
                                  }
                                }, child: Text('Next',style: TextStyle(
                                  color: Colors.white,
                                ),)),
                              ],
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

bool hide=true,store=false;