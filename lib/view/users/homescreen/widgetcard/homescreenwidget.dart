import 'package:final_main_project/controller/homescreencontroller/homescreencontroller.dart';
import 'package:final_main_project/database/db.dart';
import 'package:final_main_project/utils/colorconstant/colorconstant.dart';
import 'package:final_main_project/view/users/tapdetailscreen/tapdetailscreen.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Widgetcard extends StatefulWidget {
  const Widgetcard({super.key});

  @override
  State<Widgetcard> createState() => _WidgetcardState();
}

class _WidgetcardState extends State<Widgetcard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: Database.imagelist.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            mainAxisExtent: 280),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              showAdaptiveDialog(
                  barrierColor: colorconstant.primaryblack.withOpacity(.5),
                  context: context,
                  builder: (context) => tapdetailscreencard());
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: colorconstant.primarywhite,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(children: [
                    Positioned(
                        child: Container(
                      height: 180,
                      width: double.infinity,
                      child: Image.asset(
                        Database.imagelist[index],
                        fit: BoxFit.cover,
                      ),
                    )),
                    Positioned(
                      right: 5,
                      child: CircleAvatar(
                        backgroundColor: colorconstant.primarywhite,
                        child: InkWell(
                          onTap: () {
                            Provider.of<homescreenController>(context,
                                    listen: false)
                                .toggleLikedState(index: index);
                          },
                          child: Consumer<homescreenController>(
                            builder: (context, controller, child) =>
                                controller.isLiked(index)
                                    ? Icon(Icons.favorite)
                                    : Icon(Icons.favorite_border),
                          ),
                        ),
                      ),
                    ),
                  ]),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Strawberry cake ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  fontFamily: GoogleFonts.aleo().fontFamily),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(Icons.currency_rupee),
                                Text(
                                  "450",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
