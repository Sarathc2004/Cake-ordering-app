import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Splashscreencontroller extends ChangeNotifier {
  User? _user;

  Splashscreencontroller() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      _user = user;
      notifyListeners();
    });
  }

  bool get isLoggedIn => _user != null;

  User? get user => _user;
}
