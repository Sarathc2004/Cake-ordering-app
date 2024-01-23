import 'package:final_main_project/utils/colorconstant/colorconstant.dart';
import 'package:final_main_project/view/orders_screen/widgetcard/orderscreencard.dart';
import 'package:flutter/material.dart';

class Ordersscreen extends StatelessWidget {
  const Ordersscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorconstant.primaryrose,
        title: Text(
          "Orders",
          style: TextStyle(color: colorconstant.primarywhite),
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
