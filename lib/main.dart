import 'package:flutter/material.dart';
import 'package:gitsdh_mobile_app_testing/screens/Splash%20Screen/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:const SplashScreen() ,
      theme: ThemeData(textTheme: GoogleFonts.nunitoTextTheme(Theme.of(context).textTheme.apply())),

    );
  }
}
