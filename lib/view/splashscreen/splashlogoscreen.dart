import 'dart:async';

import 'package:final_main_project/utils/imageconstant/imageconstant.dart';
import 'package:final_main_project/view/splashscreen/logoscreen.dart';
import 'package:final_main_project/view/splashscreen/splashscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Splashlogoscreen extends StatefulWidget {
  const Splashlogoscreen({super.key});

  @override
  State<Splashlogoscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashlogoscreen> {
  bool isloading = true;
  void initState() {
    Future.delayed(Duration(seconds: 2)).then((value) {
      isloading = false;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (isloading == false) {
      return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Logoscreen();
          } else {
            return Splashscreen();
          }
        },
      );
    } else {
      return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Center(child: Image.asset(imageconstant.mainlogo))],
        ),
      );
    }
  }
}
