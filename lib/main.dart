import 'package:final_main_project/controller/cakemakernavcontroller/cakemakernavcontroller.dart';
import 'package:final_main_project/controller/homescreencontroller/homescreencontroller.dart';
import 'package:final_main_project/controller/profilescreencontroller/profilescreencontroller.dart';
import 'package:final_main_project/controller/usernavbarcontroller.dart';
import 'package:final_main_project/view/homescreen/homescreen.dart';
import 'package:final_main_project/view/splashscreen/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyC2AVkjAmt1pqGwOBynMJudv_5g87qlLkk",
          appId: "1:920860423944:android:91ed0cb6ab94bd3a3d9ebd",
          messagingSenderId: "",
          projectId: "final-main-project",
          storageBucket: "final-main-project.appspot.com"));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => usernavbarcontroller(),
        ),
        ChangeNotifierProvider(
          create: (context) => homescreenController(),
        ),
        ChangeNotifierProvider(
          create: (context) => profilescreencontroller(),
        ),
        ChangeNotifierProvider(
          create: (context) => cakemakernavbarcontroller(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splashscreen(),
      ),
    );
  }
}
