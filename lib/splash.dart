import 'dart:async';
import 'package:bmi/bmi%20screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
    Duration(seconds: 3),
            () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Bmicalculator())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("Images/img.png"))
        ),
      ),
    );
  }
}

