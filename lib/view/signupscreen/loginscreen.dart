import 'dart:math';

import 'package:final_main_project/utils/colorconstant/colorconstant.dart';
import 'package:final_main_project/utils/imageconstant/imageconstant.dart';
import 'package:final_main_project/view/signupscreen/signupscreen.dart';
import 'package:final_main_project/view/splashscreen/logoscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorconstant.primaryrose,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  height: 150,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome back,",
                          style: TextStyle(
                            color: colorconstant.primarywhite,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          " Signin to continue",
                          style: TextStyle(
                            color: colorconstant.primarywhite,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              child: Container(
                height: 800,
                color: colorconstant.primarywhite,
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(height: 15),
                      Text(
                        "  Email id",
                        style: TextStyle(
                            color: colorconstant.primaryblack,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes the shadow position
                            ),
                          ],
                        ),
                        child: TextField(
                          controller: emailcontroller,
                          decoration: InputDecoration(
                            hintText: 'Enter your email',
                            suffixIcon: Icon(Icons.email),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "  Password",
                        style: TextStyle(
                            color: colorconstant.primaryblack,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes the shadow position
                            ),
                          ],
                        ),
                        child: TextField(
                          controller: passwordcontroller,
                          decoration: InputDecoration(
                            hintText: 'Enter your password',
                            suffixIcon: Icon(Icons.lock),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      colorconstant.primaryrose),
                                ),
                                onPressed: () async {
                                  try {
                                    final credential = await FirebaseAuth
                                        .instance
                                        .signInWithEmailAndPassword(
                                      email: emailcontroller.text,
                                      password: passwordcontroller.text,
                                    );
                                    if (credential.user?.uid != null) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Logoscreen(),
                                          ));
                                    }
                                  } on FirebaseAuthException catch (e) {
                                    if (e.code == 'weak-password') {
                                      print(
                                          'The password provided is too weak.');
                                    } else if (e.code ==
                                        'email-already-in-use') {
                                      print(
                                          'The account already exists for that email.');
                                    }
                                  } catch (e) {
                                    print(e);
                                  }
                                },
                                child: Text(
                                  'Sign in',
                                  style: TextStyle(
                                      color: colorconstant.primarywhite),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 1,
                                    width: 150,
                                    color: colorconstant.primaryblack,
                                  ),
                                  Text("  Or  "),
                                  Container(
                                    height: 1,
                                    width: 150,
                                    color: colorconstant.primaryblack,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 50,
                                width: 300,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1,
                                        color: colorconstant.primarygray),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          height: 60,
                                          width: 60,
                                          child: Image.asset(
                                              imageconstant.googlelogo)),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text("SIGN IN WITH GOOGLE")
                                    ]),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Text("Dont have an account?"),
                                  InkWell(
                                      onTap: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                Signupscreen(),
                                          )),
                                      child: Text(
                                        "Signup",
                                        style: TextStyle(
                                            color: colorconstant.primaryblue),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
