import 'dart:math';

import 'package:final_main_project/controller/signupcontroller/signupcontroller.dart';
import 'package:final_main_project/utils/colorconstant/colorconstant.dart';
import 'package:final_main_project/utils/imageconstant/imageconstant.dart';
import 'package:final_main_project/view/signupscreen/loginscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  Authmethods authmethods = Authmethods();
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  void dispose() {
    emailcontroller.dispose();
    passwordcontroller.dispose();
    usernamecontroller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Future<void> registerUser() async {
      try {
        String resp = await Authmethods().registerUser(
          username: usernamecontroller.text,
          email: emailcontroller.text,
          password: passwordcontroller.text,
        );

        if (resp == "success") {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Loginscreen(),
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Signup failed")),
          );
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
        } else {
          print(e.message);
        }
      } catch (e) {
        print(e.toString());
      }
    }

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
                          "Hey,get on board",
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
                          " Signup to continue",
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
                      Text(
                        "  Username",
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
                          controller: usernamecontroller,
                          decoration: InputDecoration(
                            hintText: 'Enter your username',
                            suffixIcon: Icon(Icons.person),
                            border: InputBorder.none,
                          ),
                        ),
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
                                  backgroundColor: MaterialStateProperty.all(
                                      colorconstant.primaryrose),
                                ),
                                onPressed: () async {
                                  await registerUser();

                                  // try {
                                  //   final credential = await FirebaseAuth
                                  //       .instance
                                  //       .createUserWithEmailAndPassword(
                                  //     email: emailcontroller.text,
                                  //     password: passwordcontroller.text,
                                  //   );
                                  //   print(credential.user?.uid);
                                  //   if (credential.user?.uid != null) {
                                  //     // Add user details to Firestore here
                                  //     await signupcontroller.addUserdetails(
                                  //         username:
                                  //             usernamecontroller.text.trim(),
                                  //         email: emailcontroller.text.trim());

                                  //     // Navigate to the Login screen
                                  //     Navigator.push(
                                  //       context,
                                  //       MaterialPageRoute(
                                  //         builder: (context) => Loginscreen(),
                                  //       ),
                                  //     );
                                  //   } else {
                                  //     ScaffoldMessenger.of(context)
                                  //         .showSnackBar(
                                  //       SnackBar(
                                  //           content: Text("Signup failed")),
                                  //     );
                                  //   }
                                  // } on FirebaseAuthException catch (e) {
                                  //   if (e.code == 'weak-password') {
                                  //     print(
                                  //         'The password provided is too weak.');
                                  //   } else if (e.code ==
                                  //       'email-already-in-use') {
                                  //     print(
                                  //         'The account already exists for that email.');
                                  //   }
                                  // } catch (e) {
                                  //   print(e);
                                  // }
                                },
                                child: Text(
                                  'Sign up',
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
                                    width: 150,
                                    height: 1,
                                    color: colorconstant.primaryblack,
                                  ),
                                  Text("  Or  "),
                                  Container(
                                    height: 1,
                                    width: 150,
                                    color: colorconstant.primaryblack,
                                  )
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
                                      Text("SIGN UP WITH GOOGLE")
                                    ]),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Text("Already have an account?"),
                                  InkWell(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Loginscreen(),
                                        )),
                                    child: Text(
                                      "Signin",
                                      style: TextStyle(
                                          color: colorconstant.primaryblue),
                                    ),
                                  )
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
