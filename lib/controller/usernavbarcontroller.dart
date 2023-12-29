import 'package:final_main_project/view/homescreen/homescreen.dart';
import 'package:final_main_project/view/splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';

class usernavbarcontroller with ChangeNotifier {
  List<Widget> widgetlist = [
    Homescreen(),
    Splashscreen(),
    Homescreen(),
    Homescreen()
  ];
  int selectedindex = 0;
  Onnavtap(value) {
    selectedindex = value;
    notifyListeners();
  }
}
