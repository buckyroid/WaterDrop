import 'package:flutter/material.dart';

import 'package:water_drop/theme/app_colors.dart';
import 'package:water_drop/theme/app_styles.dart';
import 'package:water_drop/widgets/register/gender_card.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: lightBackgroundColor,
          body: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                const Padding(
                  padding:
                      EdgeInsets.only(right: 12, left: 12, top: 24, bottom: 24),
                  child: Text(
                    "Let's find out how much water you need to drink daily!",
                    style: TextStyles.pageTitleStyle,
                  ),
                ),
                Text("It is important for "),
                SizedBox(
                  height: 200,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        Container(
                            child: const Text("data"), color: Colors.amber),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text("data 2"),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text("data 3"),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          width: 120,
                          height: 10,
                          //  padding: new EdgeInsets.all(10.0),
                          child: Card(
                            elevation: 6,
                            clipBehavior: Clip.antiAlias,
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                        GenderCard()
                      ]),
                )
              ])),
    );
  }
}
