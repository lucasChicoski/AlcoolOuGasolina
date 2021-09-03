import 'package:alcoolougasolina/controllers/calculate_controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'Screens/convert_fuel.dart';

main(List<String> args) {
  instances();
  runApp(MainApp());
}

void instances() {
  getIt.registerSingleton<CalculateController>(CalculateController());
}

var getIt = GetIt.I;

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
