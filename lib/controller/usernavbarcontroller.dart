import 'package:final_main_project/view/chatscreen/chatscreen.dart';
import 'package:final_main_project/view/favouritescreen/favouritescreen.dart';
import 'package:final_main_project/view/homescreen/homescreen.dart';
import 'package:flutter/material.dart';

class usernavbarcontroller with ChangeNotifier {
  List<Widget> widgetlist = [
    Homescreen(),
    Chatscreen(),
    Favouritescreen(),
    Homescreen()
  ];
  int selectedindex = 0;
  Onnavtap(int value) {
    selectedindex = value;
    notifyListeners();
  }
}
