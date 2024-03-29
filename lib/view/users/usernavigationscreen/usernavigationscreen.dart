import 'package:final_main_project/controller/usernavbarcontroller.dart';
import 'package:final_main_project/utils/colorconstant/colorconstant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class userbottomnavscreen extends StatefulWidget {
  const userbottomnavscreen({super.key});

  @override
  State<userbottomnavscreen> createState() => _BottomnavscreenState();
}

class _BottomnavscreenState extends State<userbottomnavscreen> {
  usernavbarcontroller navbarcontroller = usernavbarcontroller();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: colorconstant.primaryblack.withOpacity(0.3),
                spreadRadius: 7,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: colorconstant.primaryrose,
              unselectedItemColor: colorconstant.primarygray,
              showSelectedLabels: true,
              backgroundColor: colorconstant.primarywhite,
              selectedIconTheme:
                  IconThemeData(color: colorconstant.primaryrose),
              unselectedIconTheme:
                  IconThemeData(color: colorconstant.primarygray),
              items: [
                BottomNavigationBarItem(
                  backgroundColor: colorconstant.primaryrose,
                  icon: Icon(Icons.home),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  backgroundColor: colorconstant.primaryrose,
                  icon: Icon(Icons.message),
                  label: "Chats",
                ),
                BottomNavigationBarItem(
                  backgroundColor: colorconstant.primaryrose,
                  icon: Icon(Icons.favorite),
                  label: "Favorite",
                ),
                BottomNavigationBarItem(
                  backgroundColor: colorconstant.primaryrose,
                  icon: Icon(Icons.person),
                  label: "Profile",
                )
              ],
              currentIndex: navbarcontroller.selectedindex,
              onTap: (value) {
                Provider.of<usernavbarcontroller>(context, listen: false)
                    .Onnavtap(value);
              },
            ),
          ),
        ),
        body: Provider.of<usernavbarcontroller>(context).widgetlist[
            Provider.of<usernavbarcontroller>(context).selectedindex],
      ),
    );
  }
}
