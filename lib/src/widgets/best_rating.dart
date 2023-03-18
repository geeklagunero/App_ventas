import 'package:app_proyect/src/services/api_services.dart';
import 'package:app_proyect/src/widgets/flayers.dart';
import 'package:flutter/material.dart';

class BestRating extends StatelessWidget {
  const BestRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ApiServices().bestRating(),
        builder: (context, AsyncSnapshot snap){
          if(snap.hasData){
            final brList = snap.data['products'] as List;
            return Flayers(
                title: "lo mas Fav",
                content: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, i){
                      return Row(
                        children: [
                          Expanded(
                              child: Container(
                                height: 120.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(brList[i]['thumbnail'])
                                  )
                                ),
                              )
                          )
                        ],
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
