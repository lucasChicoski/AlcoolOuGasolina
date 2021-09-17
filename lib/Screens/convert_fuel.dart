import 'package:alcoolougasolina/components/landscape_scree.dart';
import 'package:alcoolougasolina/components/portrait_screen.dart';
import 'package:flutter/material.dart';

class ConvertFuel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    if (isPortrait) {
      return PortraitScreen();
    } else {
      return LandScapeScreen();
    }
  }
}
