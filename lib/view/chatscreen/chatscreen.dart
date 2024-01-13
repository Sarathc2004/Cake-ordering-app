import 'package:final_main_project/utils/colorconstant/colorconstant.dart';
import 'package:final_main_project/utils/imageconstant/imageconstant.dart';
import 'package:final_main_project/view/chatscreen/chatpage.dart';
import 'package:flutter/material.dart';

class Chatscreen extends StatelessWidget {
  const Chatscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorconstant.primaryrose,
        title: Text("Chats"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) => InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Chatpage(),
                    )),
                child: Container(
                  padding: EdgeInsets.all(7),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Image.asset(
                        imageconstant.profilephoto,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      "Sarath",
                    ),
                    subtitle: Text("Hello"),
                    trailing: Text("15/10/2023"),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
