import 'package:final_main_project/view/cakemakers/ordersscreen/ordersscreen.dart';
import 'package:final_main_project/view/users/chatscreen/chatscreen.dart';
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
