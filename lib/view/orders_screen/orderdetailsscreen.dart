import 'package:flutter/material.dart';
import 'package:final_main_project/utils/colorconstant/colorconstant.dart';
import 'package:final_main_project/view/chatscreen/chatpage.dart';
import 'package:final_main_project/view/orders_screen/widgetcard/orderdetailcard.dart';

class Orderdetailsscreen extends StatelessWidget {
  const Orderdetailsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios),
              ),
              SizedBox(
                height: 10,
              ),
              orderdetailcard(
                name: 'Sarath',
                mobilenumber: '9645743702',
                pincode: '679503',
                state: 'Kerala',
                city: 'Cherpulassery',
                housename: 'Chiravarambath',
                roadname: 'Kulakkad',
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
                                colorconstant.primarygreen,
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Accept",
                              style: TextStyle(
                                color: colorconstant.primarywhite,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                colorconstant.primaryred,
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Decline",
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
      ),
    );
  }
}
