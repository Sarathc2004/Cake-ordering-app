import 'package:final_main_project/utils/colorconstant/colorconstant.dart';
import 'package:final_main_project/utils/imageconstant/imageconstant.dart';
import 'package:final_main_project/view/homescreen/widgetcard/homescreenwidgetcard.dart';
import 'package:final_main_project/view/homescreen/widgetcard/reviewpostscreen.dart';
import 'package:flutter/material.dart';

class Cakemakersprofile extends StatelessWidget {
  const Cakemakersprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: colorconstant.primaryrose,
        ),
        body: NestedScrollView(
            headerSliverBuilder: (context, value) {
              return [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                child: Image.asset(imageconstant.profilephoto),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Sarath",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Cherpulassery,kerala")
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.shop)
                      ],
                    ),
                  ),
                ),
              ];
            },
            body: Column(
              children: [
                TabBar(tabs: [
                  Tab(
                    icon: Icon(
                      Icons.post_add,
                      color: colorconstant.primaryblack,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.reviews,
                      color: colorconstant.primaryblack,
                    ),
                  )
                ]),
                Expanded(
                  child:
                      TabBarView(children: [Widgetcard(), Reviewpostscreen()]),
                )
              ],
            )),
      ),
    );
  }
}
