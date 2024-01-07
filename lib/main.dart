import 'package:final_main_project/controller/homescreencontroller/homescreencontroller.dart';
import 'package:final_main_project/controller/usernavbarcontroller.dart';
import 'package:final_main_project/view/homescreen/homescreen.dart';
import 'package:final_main_project/view/splashscreen/splashscreen.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
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
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splashscreen(),
      ),
    );
  }
}
