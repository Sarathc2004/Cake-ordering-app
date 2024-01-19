import 'package:final_main_project/utils/colorconstant/colorconstant.dart';
import 'package:final_main_project/utils/imageconstant/imageconstant.dart';
import 'package:final_main_project/view/cakemakersprofile/cakemakersprofile.dart';
import 'package:final_main_project/view/chatscreen/chatpage.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:google_fonts/google_fonts.dart';

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
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: colorconstant.primarywhite.withOpacity(0.9)),
            child: Scaffold(
              body: Column(
                children: [
                  Container(
                    height: 700,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Cakemakersprofile(),
                                )),
                            child: Container(
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    child:
                                        Image.asset(imageconstant.profilephoto),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Sarath",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
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
                                  "assets/images/splashcake1.webp",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(Icons.currency_rupee),
                              Text(
                                "450",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Strawberry",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                fontFamily: GoogleFonts.aleo().fontFamily),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Home » Recipes » Desserts » Cakes » Strawberry Cake "
                            "Published: August 20, 2018 · Modified: May 26, 2022 by John Kanell "
                            "This post may contain affiliate links. Please read our disclosure policy. "
                            "You will fall in love with this fresh Strawberry Cake made with a homemade strawberry reduction. It's moist, tender, and the most beautiful shade of pink! This recipe combines layers of strawberry flavored cake with strawberry flavored cream cheese frosting, so you get fresh strawberry flavors with every bite. "
                            "A strawberry cake on a cake stand with a slice cut and placed in front. "
                            "44165 SHARES Share Pin it Reddit Jump to Recipe  Print Recipe "
                            "This made-from-scratch strawberry cake recipe is such a delightful and pretty cake. Packed with strawberry flavors and a gorgeous shade of pink, this cake is perfect for any occasion. No box mix or Jell-O in this cake! Made with real strawberries, this cake will steal the show with its light and tender crumb.",
                            style: TextStyle(
                              fontFamily: GoogleFonts.aBeeZee().fontFamily,
                              height: 1.5,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 150,
                            height: 50,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        colorconstant.primaryrose)),
                                onPressed: () {},
                                child: Text(
                                  "Buy now",
                                  style: TextStyle(
                                      color: colorconstant.primarywhite),
                                )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 150,
                            height: 50,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        colorconstant.primaryrose)),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Chatpage(),
                                      ));
                                },
                                child: Text("Message now",
                                    style: TextStyle(
                                        color: colorconstant.primarywhite))),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
