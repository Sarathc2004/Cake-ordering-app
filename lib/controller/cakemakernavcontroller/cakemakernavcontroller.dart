import 'package:final_main_project/view/chatscreen/chatscreen.dart';
import 'package:final_main_project/view/orders_screen/ordersscreen.dart';
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
