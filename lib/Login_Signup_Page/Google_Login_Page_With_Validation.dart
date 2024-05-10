import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'Pass_Page_With_Validation.dart';

class Login_Page_With_Validation extends StatefulWidget {
  const Login_Page_With_Validation({super.key});

  @override
  State<Login_Page_With_Validation> createState() =>
      _Login_Page_With_ValidationState();
}

class _Login_Page_With_ValidationState
    extends State<Login_Page_With_Validation> {
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
              height: 380,
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
                          'Sign in',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Use your Google Account',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 60,),
                        Form(
                          key: fromkey,
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Email or Phone is required';
                              }
                              if (!value.contains('@gmail.com')) {
                                return 'Must Be Enter @gmail.com';
                              }
                              if(value.toString()=='@gmail.com')
                              {
                                return 'Must Be Enter examplae@gmail.com';
                              }
                            },
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue,width: 2)
                                ),
                                // labelStyle: TextStyle(color: Colors.blue),
                              label: Text('Email or Phone',),
                                hintStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                    borderRadius: BorderRadius.circular(8))),
                          ),
                        ),
                        SizedBox(height: 5,),
                          Text('Forgot email?',style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),),
                        SizedBox(height: 35,),
                        Text(
                          'Not your computer? Lise Guest mode to sign in privately.',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Learn more about using Guest mode',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 40,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(onPressed: () {

                            }, child: Text('Create account',style: TextStyle(
                              color: Colors.blue,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),),),
                            SizedBox(width: 10,),
                            ElevatedButton( style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(Colors.blue),
                            ),onPressed: () {
                              bool res = fromkey.currentState!.validate();
                              if(res)
                                {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Pass_Page_With_Validation(),));
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
