import 'package:final_main_project/utils/colorconstant/colorconstant.dart';
import 'package:flutter/material.dart';

class Uploadphotoscreen extends StatelessWidget {
  const Uploadphotoscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Upload your photos"),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 400,
            color: colorconstant.primaryblue,
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(colorconstant.primaryrose)),
                  onPressed: () {},
                  child: Text(
                    "Upload from gallery",
                    style: TextStyle(color: colorconstant.primarywhite),
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(colorconstant.primaryrose)),
                  onPressed: () {},
                  child: Text(
                    "Take a photo",
                    style: TextStyle(color: colorconstant.primarywhite),
                  ))
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
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
                          onPressed: () {},
                          child: Text(
                            "Post now",
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
          ),
        ],
      ),
    );
  }
}
