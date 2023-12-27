import 'package:final_main_project/utils/colorconstant/colorconstant.dart';
import 'package:flutter/material.dart';

class Bottomnavscreen extends StatefulWidget {
  const Bottomnavscreen({super.key});

  @override
  State<Bottomnavscreen> createState() => _BottomnavscreenState();
}

class _BottomnavscreenState extends State<Bottomnavscreen> {
  @override
  Widget build(BuildContext context) {
    int selectedindex = 0;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: colorconstant.primaryrose),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: colorconstant.primaryrose,
            selectedItemColor: colorconstant.primarywhite,
            unselectedItemColor: colorconstant.primaryblack,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
                  backgroundColor: colorconstant.primarygray),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_box),
                  label: "Order",
                  backgroundColor: colorconstant.primarygray),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: "Favorite",
                  backgroundColor: colorconstant.primarygray),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "Profile",
                  backgroundColor: colorconstant.primarygray)
            ],
            currentIndex: selectedindex,
            onTap: (value) {
              setState(() {
                selectedindex = value;
              });
            }),
      ),
    );
  }
}
