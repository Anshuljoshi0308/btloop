import 'package:btloop/LoginSingUp/SingUpNo.dart';
import 'package:btloop/generated/assets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:functional_textfield/functional_textfield.dart';

import 'Singup.dart';

class Login extends StatelessWidget {
  Login({super.key});

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
                              "Login",
                              style: TextStyle(
                                  color: Color(0xFF465B91), fontSize: 29),
                            ),
                            Text(
                              "Enjoy different",
                              style: TextStyle(
                                  color: Color(0xFF465B91), fontSize: 12),
                            ),
                            Text(
                              " delicious indian street foods online",
                              style: TextStyle(
                                  color: Color(0xFF465B91), fontSize: 12),
                            ),
                            SizedBox(
                              height: 20,
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
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Checkbox(
                                            value: false,
                                            onChanged: (value) {}),
                                        SizedBox(
                                          width: 1,
                                        ),
                                        Text(
                                          "Remember me",
                                          style: TextStyle(
                                            color: Color(0xFF465B91),
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Forget Password ?",
                                        style: TextStyle(
                                          color: Color(0xFF465B91),
                                          fontSize: 15,
                                        ),
                                      ))
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                signInWithEmailAndPassword(
                                    context: context,
                                    email: email.text.toString(),
                                    password: email.text.toString());
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xFF09297C),
                                      borderRadius: BorderRadius.circular(25)),
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: w * 0.8,
                                  child: Text(
                                    "Login",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SingUp()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xFFD6E1FD),
                                    borderRadius: BorderRadius.circular(25)),
                                alignment: Alignment.center,
                                height: 40,
                                width: w * 0.8,
                                child: Text(
                                  "Don't have an Account? Register",
                                  style: TextStyle(color: Color(0xFF09297C)),
                                ),
                              ),
                            )
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

  Future<void> signInWithEmailAndPassword(
      {required BuildContext context,
      required String email,
      required String password}) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      print('User ${userCredential.user!.uid} signed in');
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SingUpNo()));
      // Navigate to the next screen after successful login
    } catch (e) {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Text(e.toString());
          });

      print('Failed to sign in: $e');
      // Handle login failure
    }
  }
}
