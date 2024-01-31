import 'package:final_main_project/utils/colorconstant/colorconstant.dart';
import 'package:final_main_project/utils/imageconstant/imageconstant.dart';
import 'package:flutter/material.dart';

class Chatpage extends StatelessWidget {
  const Chatpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorconstant.primaryrose,
        title: Row(
          children: [
            CircleAvatar(
              child: Image.asset(
                imageconstant.profilephoto,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text("Sarath")
          ],
        ),
      ),
    );
  }
}
