import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Row(children: [
        SvgPicture.asset(
          'assets/female.svg',
          height: 48,
          width: 48,
        ),
        SvgPicture.asset('assets/male.svg', height: 48, width: 48)
      ]),
    );
  }
}
