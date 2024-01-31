import 'package:final_main_project/database/db.dart';
import 'package:final_main_project/utils/colorconstant/colorconstant.dart';
import 'package:flutter/material.dart';

class Reviewpostscreen extends StatelessWidget {
  const Reviewpostscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: Database.imagelist.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
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
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.asset(
                        Database.imagelist[index],
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
