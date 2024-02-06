import 'package:final_main_project/controller/profiledatacontroller/profiledatacontroller.dart';
import 'package:final_main_project/model/profiledatamodel.dart';
import 'package:final_main_project/utils/colorconstant/colorconstant.dart';
import 'package:final_main_project/utils/imageconstant/imageconstant.dart';
import 'package:final_main_project/view/users/homescreen/widgetcard/homescreenwidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  void initState() {
    getData();
    super.initState();
  }

  void getData() async {
    Profiledatacontroller profiledatacontroller =
        Provider.of(context, listen: false);
    await profiledatacontroller.refreshuser();
    // try {
    //   User? user = FirebaseAuth.instance.currentUser;
    //   if (user != null) {
    //     DocumentSnapshot snapshot = await FirebaseFirestore.instance
    //         .collection("client")
    //         .doc(user.uid)
    //         .get();

    //     print(snapshot.data());

    //     if (snapshot.exists) {
    //       setState(() {
    //         username =
    //             (snapshot.data() as Map<String, dynamic>)["username"] ?? "";
    //       });
    //     } else {
    //       // Handle the case when the document doesn't exist
    //       print("Document does not exist");
    //     }
    //   } else {
    //     print("User is not authenticated");
    //   }
    // } catch (error) {
    //   // Handle the error
    //   print("Error fetching data: $error");
    // }
  }

  @override
  Widget build(BuildContext context) {
    Profiledatamodel? profiledatamodel =
        Provider.of<Profiledatacontroller>(context).getUser;

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
                          "Hi,${profiledatamodel!.username}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
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
            ],
          ),
          bottom: TabBar(
            indicator: ShapeDecoration(
              color: colorconstant.primarywhite,
              shape: ContinuousRectangleBorder(
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
