import 'package:app_proyect/src/widgets/categorias.dart';
import 'package:app_proyect/src/widgets/flayers.dart';
import 'package:app_proyect/src/widgets/pro_banner.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          ProBanner(),
          Categorias(),
          Flayers(
            title: "Promociones",
            content: Container(
              height: 250.0,
              color: Colors.red,
            ),
          ),
          Flayers(
            title: "Lo Mas vendido",
            content: Container(
              height: 250.0,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
