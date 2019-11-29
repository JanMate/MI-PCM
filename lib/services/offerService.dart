

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:the_game/model/offerDetail.dart';

class OfferService {
  final List<OfferDetail> offers = [
    OfferDetail("Byt 3+kk", "Nabízím ke spolubydlení krásný byt po rekonstrukci 50 metrů od stanice metra Kobylisy. Nastěhování možné ihned.",
        "Kobylisy", "Na pěšinách 34/80, Praha 8", 4000, 1000, 50.1251247, 14.4573619, [ "Pračka", "Televize", "Internet", "Sporák", "Myčka" ]),
    OfferDetail("Byt 2+kk", "Nabízím ke spolubydlení krásný byt po rekonstrukci. Nastěhování možné ihned.",
        "Lhotka", "Mariánská 995/62, Praha 12", 3300, 1100, 50.0225914, 14.4402061, [ "Pračka", "Internet", "Sporák", "Myčka" ]),
    OfferDetail("Byt 1+kk", "Nabízím ke spolubydlení společný pokoj v bytě před rekonstrukcí. Nastěhování možné ihned.",
        "Dejvice", "Zelená 1999/23c, Praha 6", 4500, 1300, 50.1062025, 14.3899969, [ "Pračka", "Internet", "Vařič", "Myčka" ]),
    OfferDetail("Byt 2+kk", "Nabízím ke spolubydlení krásný byt po rekonstrukci. Nastěhování možné ihned.",
        "Anděl", "náměstí 14. října 2173/10, Praha 5", 4200, 1200, 50.0730336, 14.4049900, [ "Pračka", "Televize", "Internet", "Sporák", "Myčka" ]),
    OfferDetail("Byt 5+kk", "Nabízím ke spolubydlení krásný byt po rekonstrukci. Nastěhování možné ihned.",
        "Letňany", "Dobratická 524, Praha 18", 4300, 1500, 50.1309475, 14.5084703, [ "Pračka", "Televize", "Internet", "Sporák", "Myčka" ]),
  ];

  List<Marker> getMarkers(BuildContext context){
    return offers.asMap().map((index, offer) =>
      MapEntry(index, Marker(
        width: 80.0,
        height: 80.0,
        point: LatLng(offer.latitude, offer.longitude),
        builder: (ctx) =>
            Container(
              child: IconButton(
                icon: Icon(Icons.location_on,
                  size: 50,),
                onPressed: () {
                  Navigator.pushNamed(
                    context, '/offer/detail',
                    arguments: offers[index],);
                },
              ),
            ),
      ))).values.toList();
  }
}