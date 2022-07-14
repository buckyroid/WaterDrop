import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class Waves extends StatefulWidget {
  List<double> heightPercentages;
  Waves(this.heightPercentages);

  @override
  State<Waves> createState() => _WavesState();
}

class _WavesState extends State<Waves> {
  String _textValue = 'Old Value';

  callback(newValue) {
    setState(() {
      widget.heightPercentages = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WaveWidget(
      config: CustomConfig(
        gradients: [
          // [Colors.green, const Color(0x48cae4)],
          [Colors.red, const Color(0xf0f)],
          [Colors.blue, const Color(0x90e0ef)],
          [Colors.blue, const Color(0xade8f4)],
          [Colors.blue, const Color(0xcaf0f8)]
        ],
        durations: [35000, 19440, 10800, 6000],
        heightPercentages: widget.heightPercentages,
        blur: const MaskFilter.blur(BlurStyle.solid, 10),
        gradientBegin: Alignment.bottomLeft,
        gradientEnd: Alignment.topRight,
      ),
      size: const Size(
        double.infinity,
        double.infinity,
      ),
    );
  }
}
