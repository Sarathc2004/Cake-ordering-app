import 'package:final_main_project/utils/colorconstant/colorconstant.dart';
import 'package:final_main_project/utils/imageconstant/imageconstant.dart';
import 'package:final_main_project/view/cakemakers/ordersscreen/widgetcard/orderscreencard.dart';
import 'package:final_main_project/view/users/cakemakersprofile/cakemakersprofile.dart';
import 'package:flutter/material.dart';

class Ordersscreen extends StatelessWidget {
  const Ordersscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorconstant.primaryrose,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Orders",
              style: TextStyle(color: colorconstant.primarywhite),
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Cakemakersprofile(),
                  )),
              child: CircleAvatar(
                child: Image.asset(imageconstant.profilephoto),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
                itemCount: 10,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => orderscreencard(),
                separatorBuilder: (context, index) => Divider(
                      height: 1,
                    ))
          ],
        ),
      ),
    );
  }
}
