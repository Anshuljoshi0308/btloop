import 'package:btloop/LoginSingUp/Singup.dart';
import 'package:btloop/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'Login.dart';

class LogiHome extends StatelessWidget {
  LogiHome();

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: h * 0.2,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      backgroundColor: Color(0xFFF46E15),
                      maxRadius: 110,
                      backgroundImage: AssetImage(
                        "assets/splash/splashLogo.png",
                      ),
                      child: Image.asset("assets/splash/splashLogo.png"),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: FlutterLogo(),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: FlutterLogo(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.1,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 1,
                          width: w * 0.4,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "OR",
                        style: TextStyle(fontSize: 20),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 1,
                          width: w * 0.4,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.03,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){

                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));

                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: w * 0.8,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.black26, blurRadius: 10)
                            ],
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Color(0xFF365094))),
                        child: Text("Login"),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> SingUp()));

                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: w * 0.8,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.black26, blurRadius: 10)
                          ],
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Color(0xFF365094))),
                      child: Text("Sing Up"),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
