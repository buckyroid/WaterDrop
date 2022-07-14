import 'package:flutter/material.dart';
import 'package:water_drop/screens/splash_screen.dart';

void main() => runApp(const WaterDrop());

class WaterDrop extends StatelessWidget {
  const WaterDrop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      //theme: ThemeData.dark(),
    );
  }
}
