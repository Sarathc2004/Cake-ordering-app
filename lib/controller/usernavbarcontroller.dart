import 'package:final_main_project/view/users/chatscreen/chatscreen.dart';
import 'package:final_main_project/view/users/favouritescreen/favouritescreen.dart';
import 'package:final_main_project/view/users/homescreen/homescreen.dart';
import 'package:final_main_project/view/users/profilescreen/profilescreen.dart';
import 'package:flutter/material.dart';

class usernavbarcontroller with ChangeNotifier {
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
