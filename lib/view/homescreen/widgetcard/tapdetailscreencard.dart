import 'package:final_main_project/utils/colorconstant/colorconstant.dart';
import 'package:final_main_project/utils/imageconstant/imageconstant.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class tapdetailscreencard extends StatelessWidget {
  const tapdetailscreencard({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ui.ImageFilter.blur(
        sigmaX: 1.0,
        sigmaY: 1.0,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height / 1.2,
          width: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: colorconstant.primarywhite.withOpacity(0.9)),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Sarath",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      height: 200,
                      width: 300,
                      child: Image.asset(
                        imageconstant.splashlogo,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Strawberry",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Home » Recipes » Desserts » Cakes » Strawberry Cake Strawberry Cake Published: August 20, 2018 · Modified: May 26, 2022 by John KanellThis post may contain affiliate links. Please read our disclosure policy.You will fall in love with this fresh Strawberry Cake made with a homemade strawberry reduction. It's moist, tender, and the most beautiful shade of pink! This recipe combines layers of strawberry flavored cake with strawberry flavored cream cheese frosting, so you get fresh strawberry flavors with every bite.A strawberry cake on a cake stand with a slice cut and placed in front.44165SHARESSharePin it Reddit Jump to Recipe  Print Recipe This made from scratch with strawberry cake recipe is such a delightful and pretty cake. Packed with strawberry flavors and a gorgeous shade of pink, this cake is perfect for any occasion. No box mix or Jell-O in this cake! Made with real strawberries, this cake will steal the show with its light and tender crumb."),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
