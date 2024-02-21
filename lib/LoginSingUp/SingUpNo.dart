import 'package:btloop/LoginSingUp/Login.dart';
import 'package:btloop/generated/assets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:functional_textfield/functional_textfield.dart';

class SingUpNo extends StatelessWidget {
  SingUpNo({super.key});

  var email = TextEditingController();
  var pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFF46E15),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFFF46E15),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 150,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: h * 0.7,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(65),
                              topLeft: Radius.circular(65)),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 90,
                            ),
                            Text(
                              "Sing Up",
                              style: TextStyle(
                                  color: Color(0xFF465B91), fontSize: 29),
                            ),
                            Text(
                              "Create Account",
                              style: TextStyle(
                                  color: Color(0xFF465B91), fontSize: 12),
                            ),
                            Text(
                              " and choose your menu",
                              style: TextStyle(
                                  color: Color(0xFF465B91), fontSize: 12),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "Phone Number ",
                                    style: TextStyle(
                                        color: Color(0xFF465B91), fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height : 50,
                                  width: 50,
                                  decoration :BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Color(0xFF3E5797))
                                  ) ,
                                  child: Text("+91"),
                                ),
                                Container(
                                  height: 50,
                                  width: w * 0.7,
                                  child: TextField(

                                    decoration: InputDecoration(

                                        enabledBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Color(0xFF435B98)),
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        labelText: "Enter Your Phone number",
                                        border: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Color(0xFF435B98)),
                                          borderRadius: BorderRadius.circular(12),
                                        )),
                                  ),
                                ),
                              ],
                            ),


                            SizedBox(
                              height: h*0.2,
                            ),

                            Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xFF09297C),
                                    borderRadius: BorderRadius.circular(25)
                                ),

                                alignment: Alignment.center,
                                height: 40,
                                width: w*0.8,
                                child: Text("Send OTP", style:  TextStyle(color: Colors.white),),
                              ),
                            ),



                          ],
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Card(
                      shadowColor: Colors.orange,
                      shape: CircleBorder(),
                      elevation: 20,
                      child: Image.asset(
                        Assets.splashSplashLogo,
                        height: 250,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
