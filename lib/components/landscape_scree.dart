import 'package:alcoolougasolina/breakpoints/images.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

class LandScapeScreen extends StatefulWidget {
  @override
  _LandScapeScreenState createState() => _LandScapeScreenState();
}

class _LandScapeScreenState extends State<LandScapeScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      print(constraints.biggest);
      if (constraints.maxHeight < 341) {
        return Center(
          child: Card(
            child: Container(
              width: constraints.maxWidth * 0.6,
              height: double.infinity,
              // color: Colors.yellow,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 15),
                        child: Text(
                            "Qual melhor combustível para colocar em seu veículo")),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        Icon(Mdi.gasStation),
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
                      child: Container(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(elevation: 10),
                          onPressed: () {},
                          child: Text("Calcular"),
                        ),
                      ),
                    ),
                    Container(
                      width: constraints.maxWidth * 0.5,
                      child: Card(
                        elevation: 10,
                        child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                                "asdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasd")),
                      ),
                    )
                  ],
                ),
              ),
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
              child: Row(
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
                                child: Container(
                                  width: 300,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    elevation: 20,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          filled: false,
                                          fillColor:
                                              Colors.white.withOpacity(0.5),
                                          prefix: Text("R\$"),
                                          prefixIcon: Icon(Mdi.gasStation),
                                          labelText: "Preço da Gasolina",
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              borderSide: BorderSide.none)),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5),
                                child: Container(
                                  width: 300,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    elevation: 20,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          filled: false,
                                          fillColor:
                                              Colors.white.withOpacity(0.5),
                                          prefix: Text("R\$"),
                                          prefixIcon: Icon(Mdi.gasStation),
                                          labelText: "Preço do Álcool",
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              borderSide: BorderSide.none)),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(30),
                                child: Container(
                                  width: 250,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.grey,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        elevation: 20),
                                    child: Text("Calcular"),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                              Container(
                                child: Card(
                                  elevation: 20,
                                  child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text("asdasdasdasdasd")),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        } else {
          return Center(
            child: Card(
              child: Container(
                width: constraints.maxWidth * 0.95,
                height: constraints.maxHeight * 0.95,
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
        }
      }
    });
  }
}
