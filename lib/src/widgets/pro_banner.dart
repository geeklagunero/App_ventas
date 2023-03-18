import 'package:app_proyect/src/services/api_services.dart';
import 'package:flutter/material.dart';

class ProBanner extends StatefulWidget {
  const ProBanner({Key? key}) : super(key: key);

  @override
  State<ProBanner> createState() => _ProBannerState();
}

class _ProBannerState extends State<ProBanner> {

  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
      future: ApiServices().productsBanner(),
      builder: (context, AsyncSnapshot snap) {
        if(snap.hasData) {
          final prodList = snap.data['products'] as List;
        return SizedBox(
        height: 300.0,
        child: PageView.builder(
        controller: PageController(
        viewportFraction: 0.85
        ),
        padEnds: false,
        itemCount: prodList.length,
        itemBuilder: (context, i){
        return Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                //snap.data['products'][i]['thumbnail']
                prodList[i]['thumbnail']
              )
            )
          ),
        ),
        );
        }
        )
        );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      }
    );
  }
}

