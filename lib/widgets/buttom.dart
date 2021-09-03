import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  Function()? onPress;

  CalculateButton(this.onPress);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: onPress,
        child: Text("Calcular"),
      ),
    );
  }
}
