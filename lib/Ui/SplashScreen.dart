import 'package:btloop/Ui/OnBoarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration( seconds:  3)).whenComplete(() {

      Navigator.push(context,MaterialPageRoute(builder: (context)=> OnBoarding()  ));
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return Scaffold(
    backgroundColor: Color(0xFFF46E15),
    body: Center(
      child: CircleAvatar(
        maxRadius: 120,
        minRadius: 60,

       backgroundColor: Colors.orange,
        backgroundImage: AssetImage("assets/splash/splashLogo.png", ),
        child: Image.asset("assets/splash/splashLogo.png"),


      ).animate().fade(
        duration: Duration(seconds:  2)
      ).scale(),
    ),
  );
  }
}