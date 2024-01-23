import 'package:final_main_project/controller/cakemakernavcontroller/cakemakernavcontroller.dart';
import 'package:final_main_project/utils/colorconstant/colorconstant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class cakemakernavscreen extends StatefulWidget {
  const cakemakernavscreen({super.key});

  @override
  State<cakemakernavscreen> createState() => _BottomnavscreenState();
}

class _BottomnavscreenState extends State<cakemakernavscreen> {
  cakemakernavbarcontroller cakenavbarcontroller = cakemakernavbarcontroller();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: Container(
            decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
              BoxShadow(
                  color: colorconstant.primarywhite,
                  spreadRadius: 7,
                  blurRadius: 1)
            ]),
            child: FloatingActionButton(
              backgroundColor: colorconstant.primaryrose,
              onPressed: () {},
              child: Icon(Icons.add),
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: colorconstant.primaryrose,
          unselectedItemColor: colorconstant.primarygray,
          showSelectedLabels: true,
          backgroundColor: colorconstant.primarywhite,
          selectedIconTheme: IconThemeData(color: colorconstant.primaryrose),
          unselectedIconTheme: IconThemeData(color: colorconstant.primarygray),
          items: [
            BottomNavigationBarItem(
              backgroundColor: colorconstant.primaryrose,
              icon: Icon(Icons.shopify_rounded),
              label: "order",
            ),
            BottomNavigationBarItem(
              backgroundColor: colorconstant.primaryrose,
              icon: Icon(Icons.message),
              label: "Chats",
            ),
          ],
          currentIndex: cakenavbarcontroller.selectedindex,
          onTap: (value) {
            Provider.of<cakemakernavbarcontroller>(context, listen: false)
                .Onnavtap(value);
          },
        ),
        body: Provider.of<cakemakernavbarcontroller>(context).widgetlist[
            Provider.of<cakemakernavbarcontroller>(context).selectedindex],
      ),
    );
  }
}
