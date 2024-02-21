import 'package:btloop/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PageOne extends StatelessWidget {
  Function next;
  Function skip;

  PageOne({
    super.key,
    required this.next,
    required this.skip,
  });

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white54,
      body: Container(
        height: h,
        width: w,
        child: Stack(
          children: [
            Center(
                child: Image(
              image: AssetImage(Assets.assetsBanner),
              fit: BoxFit.fill,
              height: h,
              width: w,
            )),
            Container(
              height: h,
              width: w,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {
                          skip();
                        },
                        child: Text(
                          "Skip",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.3,
                  ),
                  Container(
                    height: h * 0.3,
                    width: w * 0.8,
                    decoration: BoxDecoration(),
                    child: Lottie.asset(Assets.onBoardingFirst),
                  ),
                  Text(
                    "Eat Fast food everytime",
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    """You can find fast food anytime in this app and wiil
give you happiness with you keep healthy. """,
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        maxRadius: 5,
                        backgroundColor: Color(0xFF09297C),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        maxRadius: 5,
                        backgroundColor: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  OutlinedButton(
                      onPressed: () {
                        next();
                      },
                      child: Text("Next"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
