import 'package:btloop/Ui/PageOne.dart';
import 'package:btloop/Ui/PageTwo.dart';
import 'package:btloop/generated/assets.dart';
import 'package:flutter/material.dart';

import '../LoginSingUp/LoginHome.dart';

class OnBoarding extends StatefulWidget {
  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  @override
  var page = 0;
  var pageController = PageController();
  void initState() {
    pageController.addListener(() {});

    super.initState();
  }

  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: pageController,
          children: [
            PageOne(
              next: () {
                setState(() {
                  page = 1;
                  pageController.animateToPage(page,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.ease);
                });
              },
              skip: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LogiHome()));
              },
            ),
            PageTwo(
              next: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LogiHome()));
              },
              skip: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LogiHome()));
              },
            )
          ],
        ),
      ),
    );
  }
}
