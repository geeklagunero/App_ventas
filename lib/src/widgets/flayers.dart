import 'package:flutter/material.dart';


class Flayers extends StatelessWidget {
  final String title;
  final Widget content;
  const Flayers({Key? key, required this.title, required this.content}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
      elevation: 10.0,
      shadowColor: Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0)
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16.0,
                letterSpacing: 1.2
              ),
            ),
          ),
          /*Container(
            height: 250.0,
            color: Colors.grey[350],
          ),*/
          content,
          GestureDetector(
            onTap: (){},
            child: const Text(
              "Mas Infomacion",
              style: TextStyle(
                color: Colors.blue
              ),
            ),
          )
        ],
      ),
    );
  }
}
