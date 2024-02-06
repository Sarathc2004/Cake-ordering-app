import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_main_project/model/profiledatamodel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Authmethods with ChangeNotifier {
  // CollectionReference collref = FirebaseFirestore.instance.collection('client');
  // Future<void> addUserdetails({
  //   required String username,
  //   required String email,
  // }) async {
  //   try {
  //     await collref.add({
  //       'username': username,
  //       'email': email,
  //     });
  //   } catch (e) {
  //     print("Error adding user details to Firestore: $e");
  //     // You can add additional error handling here if needed
  //     throw e; // Rethrow the error to propagate it up the call stack
  //   }
  // }
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<String> registerUser(
      {required String username,
      required String email,
      required String password}) async {
    String resp = "some error occured";
    try {
      if (email.isNotEmpty || password.isNotEmpty || username.isNotEmpty) {
        UserCredential cred = await auth.createUserWithEmailAndPassword(
            email: email, password: password);
        Profiledatamodel profiledatamodel = Profiledatamodel(
            username: username, email: email, uid: cred.user!.uid);

        await firestore
            .collection("client")
            .doc(cred.user!.uid)
            .set(profiledatamodel.tojson());
        resp = "success";
      }
    } catch (err) {
      resp = err.toString();
    }
    return resp;
  }

  Future<String> loginUser(
      {required String email, required String password}) async {
    String res = "some error occured";
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await auth.signInWithEmailAndPassword(email: email, password: password);
        res = "success";
      } else {
        res = "please enter all the fields";
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  Future<Profiledatamodel> getprofileDetails() async {
    User currentUser = auth.currentUser!;
    DocumentSnapshot snap =
        await firestore.collection('client').doc(currentUser.uid).get();
    return Profiledatamodel.fromsnap(snap);
  }
}
