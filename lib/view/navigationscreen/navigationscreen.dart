import 'package:final_main_project/controller/usernavbarcontroller.dart';
import 'package:final_main_project/utils/colorconstant/colorconstant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Bottomnavscreen extends StatefulWidget {
  const Bottomnavscreen({super.key});

  @override
  State<Bottomnavscreen> createState() => _BottomnavscreenState();
}

class _BottomnavscreenState extends State<Bottomnavscreen> {
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
              selectedItemColor: colorconstant.primaryblack,
              unselectedItemColor: colorconstant.primarygray,
              backgroundColor: colorconstant.primarywhite,
              selectedIconTheme:
                  IconThemeData(color: colorconstant.primaryrose),
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.add_box),
                  label: "Order",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: "Favorite",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "Profile",
                )
              ],
              currentIndex: navbarcontroller.selectedindex,
              onTap: (index) {
                Provider.of<usernavbarcontroller>(context, listen: false)
                    .Onnavtap(index);
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
