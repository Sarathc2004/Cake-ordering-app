import 'package:final_main_project/utils/colorconstant/colorconstant.dart';
import 'package:final_main_project/view/cakemakers/dessertaddscreen/uploadphotoscreen.dart';
import 'package:flutter/material.dart';

class Dessertadddetailscreeen extends StatelessWidget {
  const Dessertadddetailscreeen({super.key, required this.itemname});
  final String itemname;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(itemname),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Dessert name",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Enter the dessert name',
                  border: OutlineInputBorder(borderSide: BorderSide())),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Description",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Enter the description about dessert',
                  border: OutlineInputBorder(borderSide: BorderSide())),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Price",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Enter the price',
                  border: OutlineInputBorder(borderSide: BorderSide())),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              colorconstant.primaryrose,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Uploadphotoscreen(),
                                ));
                          },
                          child: Text(
                            "Next",
                            style: TextStyle(
                              color: colorconstant.primarywhite,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
