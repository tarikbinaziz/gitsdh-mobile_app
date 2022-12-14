import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gitsdh_mobile_app_testing/Const/const.dart';
import 'package:gitsdh_mobile_app_testing/screens/Onboarding/onboarding.dart';
import 'package:nb_utils/nb_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (_) => const OnBoardingScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: Center(
        child: SizedBox(
          width: context.width()/2.2,
            child: Image.asset("assets/images/logo.png")),
      ),
    );
  }
}
