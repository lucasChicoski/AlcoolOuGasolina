import 'package:alcoolougasolina/breakpoints/images.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

class PortraitScreen extends StatefulWidget {
  const PortraitScreen({Key? key}) : super(key: key);

  @override
  _PortraitScreenState createState() => _PortraitScreenState();
}

class _PortraitScreenState extends State<PortraitScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth <= 540 &&
          constraint.maxWidth > 280 &&
          constraint.maxHeight > 640) {
        return Center(
          child: Card(
            child: Container(
              width: constraint.maxWidth * 0.95,
              height: constraint.maxHeight * 0.95,
              
              child: Column(
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
                  Container(
                    width: 250,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: TextField(
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
        );
      }
      if (constraint.maxWidth <= 540 &&
          constraint.maxWidth > 280 &&
          constraint.maxHeight <= 640) {
        return  Center(
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
