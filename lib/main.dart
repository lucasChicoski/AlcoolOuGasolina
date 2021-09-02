import 'package:flutter/material.dart';

import 'Screens/convert_fuel.dart';

main(List<String> args) {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Álcool ou Gasolina",
      home: Scaffold(
        appBar: AppBar(),
        body: ConvertFuel(),
      ),
    );
  }
}
