import 'package:final_main_project/view/cakemakers/cakemakernavscreen/cakemakernavscreen.dart';
import 'package:final_main_project/view/cakemakers/dessertaddscreen/dessertadd_detailsscreen.dart';
import 'package:flutter/material.dart';
import 'package:final_main_project/database/db.dart';
import 'package:final_main_project/utils/colorconstant/colorconstant.dart';

class Dessertaddscreen extends StatelessWidget {
  const Dessertaddscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorconstant.primarywhite,
        title: Row(
          children: [
            InkWell(
              onTap: () => Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => cakemakernavscreen(),
                ),
                (route) => false,
              ),
              child: Icon(Icons.close),
            ),
            SizedBox(
              width: 20,
            ),
            Text("What are you offering?")
          ],
        ),
      ),
      body: SafeArea(
        child: GridView.builder(
          itemCount: 4,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              // Navigate to a new screen when the container is clicked
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Dessertadddetailscreeen(
                    // Pass any necessary data to the detail screen if needed
                    itemname: Database.dessertaddlist[index]["name"],
                  ),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(border: Border.all(width: 0.5)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      Database.dessertaddlist[index]["image"],
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    Database.dessertaddlist[index]["name"],
                    style: TextStyle(fontWeight: FontWeight.bold),
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

// Example of a detail screen, you can customize this based on your needs
