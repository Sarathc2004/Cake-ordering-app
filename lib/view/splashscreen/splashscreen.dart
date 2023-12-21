import 'package:final_main_project/database/db.dart';
import 'package:final_main_project/utils/colorconstant/colorconstant.dart';
import 'package:final_main_project/view/signupscreen/signupscreen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    // final Pagescontroller splashProvider =
    //     Provider.of<Pagescontroller>(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: PageView(
                controller: controller,
                children: List.generate(
                  3,
                  (index) => Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            child: Image.asset(
                                Database.splashlist[index]["image"])),
                        SizedBox(
                          height: 80,
                        ),
                        Text(
                          Database.splashlist[index]["title"],
                          style: TextStyle(
                              color: colorconstant.primaryblack,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(Database.splashlist[index]["firstline"]),
                        Text(Database.splashlist[index]["secondline"]),
                        SizedBox(
                          height: 110,
                        ),
                        if (index == 2)
                          ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.blue)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Signupscreen(),
                                  ));
                              // Handle get started button click
                              // You can navigate to the next screen or perform any action here.
                            },
                            child: Text('Get Started'),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: ScrollingDotsEffect(
                  activeDotColor: colorconstant.primaryblack),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
