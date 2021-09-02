import 'package:alcoolougasolina/components/landscape_scree.dart';
import 'package:alcoolougasolina/components/portrait_screen.dart';
import 'package:flutter/material.dart';

class ConvertFuel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      return Visibility(
        visible: orientation == Orientation.portrait ,
        child: PortraitScreen(),
        replacement: LandScapeScreen(),
      );
    });
  }
}
