import 'package:flutter/material.dart';

class ProBanner extends StatefulWidget {
  const ProBanner({Key? key}) : super(key: key);

  @override
  State<ProBanner> createState() => _ProBannerState();
}

class _ProBannerState extends State<ProBanner> {

  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      child: PageView.builder(
        controller: PageController(
          viewportFraction: 0.85
        ),
        padEnds: false,
        itemCount: 10,
          itemBuilder: (context, i){
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                color: Colors.blueGrey,
              ),
            );
          }
      )
    );
  }
}

