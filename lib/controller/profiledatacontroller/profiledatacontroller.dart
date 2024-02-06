import 'package:final_main_project/controller/signupcontroller/signupcontroller.dart';
import 'package:final_main_project/model/profiledatamodel.dart';
import 'package:flutter/material.dart';

class Profiledatacontroller with ChangeNotifier {
  Profiledatamodel? user;
  final Authmethods authmethods = Authmethods();
  Profiledatamodel? get getUser => user;

  Future<void> refreshuser() async {
    Profiledatamodel profiledatamodel = await authmethods.getprofileDetails();
    user = profiledatamodel;
    notifyListeners();
  }
}
