import 'package:final_main_project/utils/colorconstant/colorconstant.dart';
import 'package:final_main_project/utils/imageconstant/imageconstant.dart';
import 'package:final_main_project/view/cakemakersnavscreen/cakemakernavscreen.dart';
import 'package:final_main_project/view/usernavigationscreen/usenavigationscreen.dart';
import 'package:flutter/material.dart';

class Logoscreen extends StatelessWidget {
  const Logoscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorconstant.primarywhite,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(imageconstant.splashlogo),
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(colorconstant.primaryrose)),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => userbottomnavscreen(),
                  ),
                  (route) => false);
            },
            child: Text(
              "Users",
              style: TextStyle(color: colorconstant.primarywhite),
            ),
          ),
          Text("Or"),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(colorconstant.primaryrose)),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => cakemakernavscreen(),
                    ),
                    (route) => false);
              },
              child: Text(
                "Cakemakers",
                style: TextStyle(color: colorconstant.primarywhite),
              ))
        ],
      ),
    );
  }
}
