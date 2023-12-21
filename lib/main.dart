import 'package:final_main_project/view/splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // MultiProvider(
        //   providers: [
        //     ChangeNotifierProvider(
        //       create: (context) => PagesController(),
        //     )
        //   ],
        //   child:
        MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
    // );
  }
}
