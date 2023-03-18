import 'package:app_proyect/src/services/api_services.dart';
import 'package:app_proyect/src/widgets/flayers.dart';
import 'package:flutter/material.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ApiServices().bestSeller(),
        builder: (context, AsyncSnapshot snap){
          if(snap.hasData){
            final bSlist = snap.data['products'] as List;
            return Flayers(
                title: "Los mas vendido",
                content: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2
                    ),
                    itemCount: bSlist.length,
                    itemBuilder: (context, i){
                     return SizedBox(
                       child: Image(
                         image: NetworkImage(
                           bSlist[i]['thumbnail']
                         ),
                       ),
                     );
                    }
                )
            );
          } else {
            return SizedBox();
          }

        }
    );
  }
}
