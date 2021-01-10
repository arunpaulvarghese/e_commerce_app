import 'package:e_commerce/pages/onboarding/onboarding_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../top_nav.dart';

class OnBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _buildBody(context)),
      backgroundColor: Colors.white,
    );
  }

  Widget _buildBody(BuildContext context) {
    var _totPages = OnboardingItems.getOnBoardingItems().length;
    return PageView.builder(
      itemCount: _totPages,
      itemBuilder: (BuildContext context, int index) {
        OnboardingItem page = OnboardingItems.getOnBoardingItems()[index];
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(left: 20),
                    height: 3,
                    child: ListView.builder(
                        itemCount: _totPages,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, i) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Container(
                              width: 20,
                              decoration: BoxDecoration(
                                color: i == index ? Colors.black : Colors.grey,
                                borderRadius: BorderRadius.circular(.1),
                              ),
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          page.title,
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 300,
                          child: Text(
                            page.subTitle,
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Center(child: Image(image: AssetImage(page.image))),
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 0, 15),
                  width: 75,
                  height: 75,
                  child: Stack(
                    children: [
                      Image.asset('images/border_1.png'),
                      Center(
                        child: Container(
                          padding: EdgeInsets.all(5),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Icon(
                            Icons.arrow_forward_ios_sharp,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () => _gotoHomePage(context),
              ),
            ],
          ),
        );
      },
    );
  }

  void _gotoHomePage(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen()));
  }
}
