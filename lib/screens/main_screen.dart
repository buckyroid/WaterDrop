import 'package:flutter/material.dart';

import 'package:wave/config.dart';
import 'package:wave/wave.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:water_drop/theme/app_colors.dart';
import 'package:water_drop/theme/app_theme.dart';
import 'package:water_drop/screens/splash_screen.dart';
import 'package:water_drop/widgets/add_water_buttons.dart';
import 'package:water_drop/store/total_drinked_ml/total_drinked_ml.dart';

class MainScreen extends StatefulWidget {
  final TotalDrinkedMl totalDrinkedMl = TotalDrinkedMl();

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<double> heightPercentages = [1.0, 1.0, 1.0, 1.0];

  changeWavePercentage(int totalDrinkedMl) {
    setState(() {
      double value = totalDrinkedMl / 10000;
      heightPercentages[0] = value - 0.01;
      heightPercentages[1] = value - 0.02;
      heightPercentages[2] = value;
      heightPercentages[3] = value - 0.03;

      //heightPercentages = newHeightPercentages;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lightBackgroundColor,
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          selectedItemColor: const Color(0xFF37386A),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.do_not_touch), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.circle), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.square_foot), label: ""),
          ],
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Observer(
                builder: (_) => Text(
                    '${widget.totalDrinkedMl.totalDrinkedMl} ml',
                    style: const TextStyle(
                        fontSize: 32,
                        color: Colors.black,
                        fontFamily: 'Poppins-Regular')),
              ),
              Container(
                alignment: Alignment.center,
                clipBehavior: Clip.antiAlias,
                height: 250,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: WaveWidget(
                  config: CustomConfig(
                    gradients: [
                      // [Colors.green, const Color(0x48cae4)],
                      [Colors.red, const Color(0x48cae4)],
                      [Colors.blue, const Color(0x90e0ef)],
                      [Colors.blue, const Color(0xade8f4)],
                      [Colors.blue, const Color(0xcaf0f8)]
                    ],
                    durations: [35000, 19440, 10800, 116000],
                    heightPercentages: heightPercentages,
                    blur: const MaskFilter.blur(BlurStyle.solid, 10),
                    gradientBegin: Alignment.bottomLeft,
                    gradientEnd: Alignment.topRight,
                  ),
                  size: const Size(
                    double.infinity,
                    double.infinity,
                  ),
                ),
                // ),
              ),
              AddWaterButtons(widget.totalDrinkedMl, changeWavePercentage),
            ]));
  }
}
