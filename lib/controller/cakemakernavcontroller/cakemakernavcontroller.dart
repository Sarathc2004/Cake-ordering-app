import 'package:final_main_project/view/users/chatscreen/chatscreen.dart';
import 'package:final_main_project/view/users/ordersscreen/ordersscreen.dart';
import 'package:flutter/material.dart';

class cakemakernavbarcontroller with ChangeNotifier {
  List<Widget> widgetlist = [
    Ordersscreen(),
    Chatscreen(),
  ];
  int selectedindex = 0;
  Onnavtap(int index) {
    selectedindex = index;

    notifyListeners();
  }
}
