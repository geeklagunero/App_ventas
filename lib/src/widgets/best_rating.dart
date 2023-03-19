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
            List brList = snap.data['products'] as List;
            brList = brList.where((e) => e['rating'] >= 4.7).toList();
            return Flayers(
                title: "lo mas Fav",
                content: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: brList.length,
                    itemBuilder: (context, i){
                      return Row(
                        children: [
                          Expanded(
                              child: Container(
                                height: 120.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(brList[i]['thumbnail'])
                                  )
                                ),
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                    '⭐ ${brList[i]['rating'].toString()}',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      backgroundColor: Colors.black
                                    ),
                                  ),
                                ),
                              )
                          ),
                          Expanded(
                              child: Text(
                                brList[i]['description']
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
