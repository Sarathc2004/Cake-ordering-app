import 'package:final_main_project/utils/colorconstant/colorconstant.dart';
import 'package:final_main_project/view/users/ordersscreen/ordersdetailsscreen.dart';
import 'package:flutter/material.dart';

class orderscreencard extends StatelessWidget {
  const orderscreencard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sarath",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text("A new order for you")
            ],
          ),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(colorconstant.primarygreen)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Orderdetailsscreen(),
                    ));
              },
              child: Text(
                "Order details >>",
                style: TextStyle(color: colorconstant.primaryblack),
              ))
        ],
      ),
    );
  }
}
