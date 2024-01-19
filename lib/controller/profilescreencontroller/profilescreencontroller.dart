import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class profilescreencontroller with ChangeNotifier {
  void historybutton() {
    print("History");
  }

  void notificationbutton() {
    print("Notification");
  }

  void settingsbutton() {
    print("Settings");
  }

  void helpbutton() {
    print("Help");
  }

  void logoutbutton() async {
    // Use FirebaseAuth.instance to sign out the current user
    await FirebaseAuth.instance.signOut();

    // Notify listeners to update the UI or perform any necessary actions
    notifyListeners();
  }
}
