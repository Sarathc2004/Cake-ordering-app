import 'package:final_main_project/controller/profilescreencontroller/profilescreencontroller.dart';
import 'package:final_main_project/database/db.dart';
import 'package:final_main_project/utils/colorconstant/colorconstant.dart';
import 'package:final_main_project/utils/imageconstant/imageconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Positioned(
                child: Container(
                  height: 150,
                  color: colorconstant.primaryrose,
                ),
              ),
              Positioned(
                  top: 10,
                  left: 145,
                  child: CircleAvatar(
                    radius: 50,
                    child: Image.asset(
                      imageconstant.profilephoto,
                      fit: BoxFit.cover,
                    ),
                  )),
              Positioned(
                  left: 165,
                  bottom: 5,
                  child: Text(
                    "Sarath",
                    style: TextStyle(
                        color: colorconstant.primarywhite, fontSize: 20),
                  )),
            ]),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  height: 600,
                  decoration: BoxDecoration(
                    color: colorconstant.primarywhite,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: Database.profilelist.length,
                    itemBuilder: (context, index) => Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: InkWell(
                            onTap: () {
                              switch (index) {
                                case 0:
                                  Provider.of<profilescreencontroller>(context,
                                          listen: false)
                                      .historybutton();
                                  break;
                                case 1:
                                  Provider.of<profilescreencontroller>(context,
                                          listen: false)
                                      .notificationbutton();
                                  break;
                                case 2:
                                  Provider.of<profilescreencontroller>(context,
                                          listen: false)
                                      .settingsbutton();
                                  break;
                                case 3:
                                  Provider.of<profilescreencontroller>(context,
                                          listen: false)
                                      .helpbutton();
                                  break;

                                case 4:
                                  Provider.of<profilescreencontroller>(context,
                                          listen: false)
                                      .logoutbutton();
                                  ();
                                  break;

                                default:
                                  break;
                              }
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              height: 50,
                              decoration: BoxDecoration(
                                color: colorconstant.primarywhite,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Database.profilelist[index]["icon"]),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Text(Database.profilelist[index]
                                          ["buttonname"]),
                                    ],
                                  ),
                                  Row(
                                    children: [Icon(Icons.arrow_forward)],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
