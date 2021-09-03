import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

// ignore: must_be_immutable
class InputTextBase extends StatelessWidget {
  String? titulo;
 
  Function(String) onChange;

  InputTextBase(
    this.titulo,
    this.onChange,
   
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: TextField(
          onChanged: onChange,
          keyboardType: TextInputType.numberWithOptions(decimal: true),
          decoration: InputDecoration(
              
              labelText: titulo,
              filled: false,
              prefix: Text("R\$"),
              prefixIcon: Icon(Mdi.gasStation),
              border: OutlineInputBorder(borderSide: BorderSide.none)),
        ),
      ),
    );
  }
}
