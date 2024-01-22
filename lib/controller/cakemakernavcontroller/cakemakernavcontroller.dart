import 'package:final_main_project/view/chatscreen/chatscreen.dart';
import 'package:final_main_project/view/favouritescreen/favouritescreen.dart';
import 'package:final_main_project/view/homescreen/homescreen.dart';
import 'package:final_main_project/view/profilescreen/profilescreen.dart';
import 'package:flutter/material.dart';

class cakemakernavbarcontroller with ChangeNotifier {
  List<Widget> widgetlist = [
    Homescreen(),
    Chatscreen(),
    Favouritescreen(),
    Profilescreen()
  ];
  int selectedindex = 0;
  Onnavtap(int index) {
    selectedindex = index;

    notifyListeners();
  }
}
