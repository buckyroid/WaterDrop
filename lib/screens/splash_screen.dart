import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:water_drop/theme/app_colors.dart';
import 'package:water_drop/screens/main_screen.dart';
import 'package:water_drop/screens/landing_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late SpinKitWaveSpinner spinkit;

  @override
  void initState() {
    super.initState();

    spinkit = const SpinKitWaveSpinner(
      color: appThemeColor,
      size: 88.0,
      trackColor: spinkitTrackColor,
      waveColor: spinkitWaveColor,
    );

    Future.delayed(const Duration(seconds: 2), () async {
      //Delay for 2 seconds and check for if user signed up before
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setBool("hasSignedUpBefore", false);
      String asd = prefs.getBool("hasSignedUpBefore").toString();
      print("OOOOP " + asd);
      if (prefs.getBool("hasSignedUpBefore") ?? false) {
        //If null then false
        print("Ups..");
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MainScreen()));
      } else {
        print("RO ");
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LandingScreen()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Center(
        child: spinkit,
      ),
    );
  }
}
