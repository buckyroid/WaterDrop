import 'package:flutter/material.dart';

import 'package:water_drop/store/total_drinked_ml/total_drinked_ml.dart';

class AddWaterButtons extends StatelessWidget {
  TotalDrinkedMl totalDrinkedMl;
  Function changeWavePercentage;

  AddWaterButtons(this.totalDrinkedMl, this.changeWavePercentage);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 8, right: 8, bottom: 2, top: 16),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                    onPressed: () {
                      onPressed(200);
                      //changeWavePercentage(totalDrinkedMl.totalDrinkedMl);
                      print(totalDrinkedMl.totalDrinkedMl);
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.water,
                            color: Colors.white,
                          ),
                          Padding(padding: EdgeInsets.only(right: 4)),
                          Text("200 ml"),
                        ]),
                    style: addWaterButtonsStyle(0xB3D7D4FE),
                  )),
                  const Padding(padding: EdgeInsets.all(2)),
                  Expanded(
                      child: ElevatedButton(
                    onPressed: () {
                      onPressed(250);
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("250 ml"),
                          Icon(
                            Icons.bolt_outlined,
                            color: Colors.white,
                          ),
                        ]),
                    style: addWaterButtonsStyle(0xB3CFDFFB),
                  )),
                ],
              ),
              const Padding(padding: EdgeInsets.all(4)),
              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                    onPressed: () {
                      onPressed(500);
                    },
                    child: const Text("500 ml"),
                    style: addWaterButtonsStyle(0xB3FDEED8),
                  )),
                  const Padding(padding: EdgeInsets.all(2)),
                  Expanded(
                      child: ElevatedButton(
                    onPressed: () {
                      onPressed(1000);
                    },
                    child: const Text("1 L"),
                    style: addWaterButtonsStyle(0xB3F4E3E0),
                  )),
                ],
              )
            ]));
  }

  void onPressed(int mlAmountToAdd) {
    totalDrinkedMl.increase(mlAmountToAdd);
    changeWavePercentage(totalDrinkedMl.totalDrinkedMl);
  }

  void calculateWavePercentage() {}
}

ButtonStyle addWaterButtonsStyle(int color) {
  return ElevatedButton.styleFrom(
      minimumSize: const Size(12, 48),
      primary: Color(color),
      padding: const EdgeInsets.all(4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // <-- Radius
      ),
      textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.normal));
}
