import 'package:flutter/material.dart';

import 'package:water_drop/theme/app_colors.dart';
import 'package:water_drop/screens/register_screen.dart';
import 'package:water_drop/theme/app_styles.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lightBackgroundColor,
        body: Center(
          child: Column(
            children: [
              Padding(padding: const EdgeInsets.only(top: 20), child: Image.asset('assets/water_time_light_gif.gif', width: 200, height: 300)),
              const Padding(padding: EdgeInsets.only(left: 15, right: 15),
                child: Text("%60 of your body is water. It is important to stay hydrated. With this app, you can keep track of your daily water intake.", style: TextStyles.descriptionStyle)),
            //  const Spacer(),
              Padding(padding: const EdgeInsets.only(top: 25),
                  child: ElevatedButton(
                    onPressed: (() => {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RegisterScreen())) //If clicked, navigate to Register Screen
                        }),
                      style: ButtonStyles.generalButtonStyle,
                      child: const Text("Let's get started"))),
              const Spacer(), //Takes all available space between 2 widgets
              Image.asset('assets/water-drop-light-logo.png', height: 80, width: 140),
            ],
          ),
        ));
  }
}
