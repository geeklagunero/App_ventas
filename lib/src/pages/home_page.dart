import 'package:app_proyect/src/widgets/best_rating.dart';
import 'package:app_proyect/src/widgets/best_seller.dart';
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
        children: const [
          ProBanner(),
          Categorias(),
          BestSeller(),
          BestRating()
        ],
      ),
    );
  }
}
