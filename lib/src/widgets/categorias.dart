import 'package:flutter/material.dart';

class Categorias extends StatelessWidget {
  const Categorias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.0,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
          itemBuilder: (context, i){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3.0),
              child: Container(
                width: 180.0,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(16.0)
                ),
                child: Align(
                  alignment: Alignment.bottomCenter / 1.2,
                  child: Text(
                    'Categorias',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}
