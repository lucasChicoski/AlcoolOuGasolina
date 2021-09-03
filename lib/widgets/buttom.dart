import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  Function()? onPress;
  double? width;

  CalculateButton(this.onPress, this.width);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: onPress,
        child: Text("Calcular"),
      ),
    );
  }
}
