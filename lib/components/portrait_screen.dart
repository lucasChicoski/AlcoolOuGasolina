import 'package:alcoolougasolina/breakpoints/images.dart';
import 'package:alcoolougasolina/controllers/calculate_controller.dart';
import 'package:alcoolougasolina/widgets/buttom.dart';
import 'package:alcoolougasolina/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mdi/mdi.dart';

class PortraitScreen extends StatefulWidget {
  const PortraitScreen({Key? key}) : super(key: key);

  @override
  _PortraitScreenState createState() => _PortraitScreenState();
}

class _PortraitScreenState extends State<PortraitScreen> {
  CalculateController calculateController = GetIt.I<CalculateController>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth <= 540 && constraint.maxWidth > 280) {
        return Center(
          child: Card(
            child: Container(
              width: constraint.maxWidth * 0.95,
              height: constraint.maxHeight * 0.95,
              child: SingleChildScrollView(child: Observer(
                builder: (_) {
                  return Column(
                    children: [
                      Container(
                        child: Image.asset(
                          wallpaper,
                          width: 300,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InputTextBase(
                          'Preço da Gasolina', calculateController.setGasoline),
                      InputTextBase(
                          'Preço da Álcool', calculateController.setAlcohol),
                      SizedBox(
                        height: 20,
                      ),
                      CalculateButton(
                          calculateController.validationButton ? calculateController.calculateFunction : null),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        child: Card(
                          elevation: 2,
                          child: Padding(
                              padding: EdgeInsets.all(20),
                              child: Text(calculateController.result, style: TextStyle(fontSize: 20),)),
                        ),
                      )
                    ],
                  );
                },
              )),
            ),
          ),
        );
      }
      if (constraint.maxWidth <= 540 && constraint.maxWidth > 280) {
        return Center(
          child: Card(
            child: Container(
              width: constraint.maxWidth * 0.95,
              height: constraint.maxHeight * 0.95,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(
                        wallpaper,
                        width: 250,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 250,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'Preço da Gasolina',
                              filled: false,
                              prefix: Text("R\$"),
                              prefixIcon: Icon(Mdi.gasStation),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                      ),
                    ),
                    Container(
                      width: 250,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'Preço do Alcool',
                              filled: false,
                              prefix: Text("R\$"),
                              prefixIcon: Icon(Mdi.gasStation),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 150,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                        child: Text("Calcular"),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      child: Card(
                        elevation: 2,
                        child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Text("asdasdasdasdasdasd")),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      } else if (constraint.maxWidth <= 280) {
        return Center(
          child: Card(
            child: Container(
              width: constraint.maxWidth * 0.95,
              height: constraint.maxHeight * 0.95,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(
                        wallpaper,
                        width: 250,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 250,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'Preço da Gasolina',
                              filled: false,
                              prefix: Text("R\$"),
                              prefixIcon: Icon(Mdi.gasStation),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                      ),
                    ),
                    Container(
                      width: 250,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'Preço do Alcool',
                              filled: false,
                              prefix: Text("R\$"),
                              prefixIcon: Icon(Mdi.gasStation),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 150,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                        child: Text("Calcular"),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      child: Card(
                        elevation: 2,
                        child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Text("asdasdasdasdasdasd")),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      } else {
        return Center(
          child: Card(
            child: Container(
              width: constraint.maxWidth * 0.95,
              height: constraint.maxHeight * 0.95,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(
                        wallpaper,
                        width: 500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 250,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'Preço da Gasolina',
                              filled: false,
                              prefix: Text("R\$"),
                              prefixIcon: Icon(Mdi.gasStation),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                      ),
                    ),
                    Container(
                      width: 250,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'Preço do Alcool',
                              filled: false,
                              prefix: Text("R\$"),
                              prefixIcon: Icon(Mdi.gasStation),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 150,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                        child: Text("Calcular"),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      child: Card(
                        elevation: 2,
                        child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Text("asdasdasdasdasdasd")),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }
    });
  }
}
