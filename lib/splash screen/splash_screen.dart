import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_panda_app/constats/color.dart';
import 'package:food_panda_app/dashboard/welcome.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}): super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  startTimer(){
    Timer(Duration(seconds: 2), () async {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => WelcomeScreen(),));
    },);
  }
  @override
  void initState() {
    super.initState();
    startTimer();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.navy,
      body: Center(
        child: Image.asset('images/splash.png'),
      ),
    );
  }
}