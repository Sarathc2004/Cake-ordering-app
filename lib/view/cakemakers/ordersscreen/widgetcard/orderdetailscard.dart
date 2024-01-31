import 'package:flutter/material.dart';

class orderdetailcard extends StatelessWidget {
  orderdetailcard(
      {super.key,
      required this.name,
      required this.mobilenumber,
      required this.pincode,
      required this.state,
      required this.city,
      required this.housename,
      required this.roadname});
  String name;
  String mobilenumber;
  String pincode;
  String state;
  String city;
  String housename;
  String roadname;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 250,
                width: 350,
                child: Image.asset(
                  "assets/images/cake.jpeg",
                  fit: BoxFit.cover,
                )),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          name,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(housename, style: TextStyle(fontSize: 15)),
        Text(roadname, style: TextStyle(fontSize: 15)),
        Text(city, style: TextStyle(fontSize: 15)),
        Text(state, style: TextStyle(fontSize: 15)),
        Text(pincode, style: TextStyle(fontSize: 15)),
        Text(mobilenumber, style: TextStyle(fontSize: 15))
      ],
    );
  }
}
