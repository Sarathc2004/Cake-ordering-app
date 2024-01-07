import 'package:final_main_project/utils/colorconstant/colorconstant.dart';
import 'package:final_main_project/view/homescreen/widgetcard/homescreenwidgetcard.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: colorconstant.primaryrose,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: colorconstant.primarywhite,
                      radius: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi,Sarath",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "Find and get your best cake",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Icon(Icons.shopping_cart)
            ],
          ),
          bottom: TabBar(
            indicator: ShapeDecoration(
              color: colorconstant.primarywhite,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
            ),
            tabs: [
              Tab(
                text: "Cakes",
              ),
              Tab(
                text: "Donuts",
              ),
              Tab(
                text: "Cupcakes",
              ),
              Tab(
                text: "Cookies",
              )
            ],
            labelColor: colorconstant.primaryblack,
            unselectedLabelColor: colorconstant.primarywhite,
            padding: EdgeInsets.symmetric(horizontal: 8),
          ),
        ),
        body: TabBarView(
            children: [Widgetcard(), Widgetcard(), Widgetcard(), Widgetcard()]),
      ),
    );
  }
}
