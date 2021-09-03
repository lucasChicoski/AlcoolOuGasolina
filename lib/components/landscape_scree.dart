import 'package:alcoolougasolina/breakpoints/images.dart';
import 'package:alcoolougasolina/controllers/calculate_controller.dart';
import 'package:alcoolougasolina/widgets/buttom.dart';
import 'package:alcoolougasolina/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mdi/mdi.dart';

class LandScapeScreen extends StatefulWidget {
  @override
  _LandScapeScreenState createState() => _LandScapeScreenState();
}

class _LandScapeScreenState extends State<LandScapeScreen> {
  CalculateController calculateController = GetIt.I<CalculateController>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      print(constraints.biggest);
      if (constraints.maxHeight < 341) {
        return Center(
          child: Card(
            child: Container(
              width: constraints.maxWidth * 0.95,
              height: double.infinity,
              // color: Colors.yellow,
              child: SingleChildScrollView(child: Observer(builder: (_) {
                return Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 15),
                        child: Text(
                            "Qual melhor combustível para colocar em seu veículo")),
                    Wrap(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 150,
                          height: 50,
                          child: Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  prefix: Text("R\$"),
                                  labelText: 'Gasolina',
                                  filled: false,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none)),
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 15, 10, 0),
                            child: Icon(Mdi.gasStation)),
                        Container(
                          width: 150,
                          height: 50,
                          child: Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  prefix: Text("R\$"),
                                  labelText: 'Alcool',
                                  filled: false,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 15),
                      child: CalculateButton(
                          calculateController.validationButton
                              ? calculateController.calculateFunction
                              : null,
                          150),
                    ),
                    Container(
                      width: constraints.maxWidth * 0.5,
                      child: Card(
                        elevation: 10,
                        child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(calculateController.result)),
                      ),
                    )
                  ],
                );
              })),
            ),
          ),
        );
      } else {
        if (constraints.maxWidth >= 700) {
          return Center(
            child: Container(
                width: constraints.maxWidth * 0.8,
                height: double.infinity,
                // color: Colors.yellow,
                child: Observer(
                  builder: (_) {
                    return Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            //color: Colors.blue,
                            child: Image.asset(wallpaper),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Card(
                                elevation: 30,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(5),
                                      child: InputTextBase('Gasolina', calculateController.setGasoline)
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(5),
                                      child: InputTextBase('Alcool', calculateController.setAlcohol)
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: CalculateButton(
                                          calculateController.validationButton
                                              ? calculateController
                                                  .calculateFunction
                                              : null,
                                          150),
                                    ),
                                    Container(
                                      child: Card(
                                        elevation: 20,
                                        child: Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Text(
                                                calculateController.result)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    );
                  },
                )),
          );
        } else {
          return Center(
            child: Card(
              child: Container(
                width: constraints.maxWidth * 0.95,
                height: constraints.maxHeight * 0.95,
                child: SingleChildScrollView(child: Observer(
                  builder: (_) {
                    return Column(
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
                        CalculateButton(
                            calculateController.validationButton
                                ? calculateController.calculateFunction
                                : null,
                            150),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          child: Card(
                            elevation: 2,
                            child: Padding(
                                padding: EdgeInsets.all(20),
                                child: Text(calculateController.result)),
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
      }
    });
  }
}
