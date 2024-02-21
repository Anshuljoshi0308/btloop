import 'package:btloop/generated/assets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:functional_textfield/functional_textfield.dart';

import 'Login.dart';
import 'SingUpNo.dart';

class SingUp extends StatelessWidget {
  SingUp({super.key});

  var email = TextEditingController();
  var pass = TextEditingController();
  var name = TextEditingController();

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
                                    "Your Name",
                                    style: TextStyle(
                                        color: Color(0xFF465B91), fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              width: w * 0.9,
                              child: TextField(
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF435B98)),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    labelText: "Enter Your Name",
                                    border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF435B98)),
                                      borderRadius: BorderRadius.circular(12),
                                    )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "Your Email",
                                    style: TextStyle(
                                        color: Color(0xFF465B91), fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              width: w * 0.9,
                              child: TextField(
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF435B98)),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    labelText: "Enter Your Email",
                                    border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF435B98)),
                                      borderRadius: BorderRadius.circular(12),
                                    )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "Your Password",
                                    style: TextStyle(
                                        color: Color(0xFF465B91), fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              width: w * 0.9,
                              child: TextField(
                                decoration: InputDecoration(
                                    suffixIcon:
                                        Icon(Icons.remove_red_eye_outlined),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF435B98)),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    labelText: "Enter Your Password",
                                    border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF435B98)),
                                      borderRadius: BorderRadius.circular(12),
                                    )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: InkWell(
                                onTap: () {
                                  registerWithEmailAndPassword(
                                      context: context,
                                      name: name.text.toString(),
                                      email: email.text.toString(),
                                      password: pass.text.toString());


                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xFF09297C),
                                      borderRadius: BorderRadius.circular(25)),
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: w * 0.8,
                                  child: Text(
                                    "Next",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
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

  Future<void> registerWithEmailAndPassword(
      {required BuildContext context,
      required String name,
      required String email,
      required String password}) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // After successful registration, update user's display name
      await userCredential.user!.updateDisplayName(name);

      print('User ${userCredential.user!.uid} registered');
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));

      // Navigate to the next screen after successful registration
    } catch (e) {
      print('Failed to register: $e');
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Text(e.toString());
          });

      // Handle registration failure
    }
  }
}
