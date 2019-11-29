import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:the_game/components/flutterMapWidget.dart';
import 'package:the_game/security/ApiKeyLoader.dart';
import 'package:the_game/services/offerService.dart';

class OffersPage extends StatelessWidget {
  final OfferService offerService = OfferService();

  OffersPage();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: TextFormField(
              validator: (value) {
                // do nothin so far
              },
              initialValue: "Hledat",
//            onTap: () => value,
            ),
            bottom: TabBar(
              tabs: [
                Tab(text: "Mapa s inzeráty", icon: Icon(Icons.map)),
                Tab(text: "Seznam inzerátů", icon: Icon(Icons.format_list_bulleted)),
              ],
              unselectedLabelColor: Colors.black54,
            ),
            backgroundColor: Colors.white,
          ),
          body: TabBarView(
            children: [
              Container(
                child: FlutterMapWidget(
                    position: LatLng(50.0790083, 14.4458433),
                    markers: OfferService().getMarkers(context),
                    zoom: 11.7,
                ),
                width: 300,
                height: 500,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.0,
                      color: Colors.black,
                    )
                ),
              ),
              ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.asset("images/flat.jpg", width: 60,),
                    title: Text(offerService.offers[index].title() + "     " + offerService.offers[index].fullRentAmount().toString() + " Kč"),
                    onTap: () => Navigator.pushNamed(
                      context, '/offer/detail',
                      arguments: offerService.offers[index],
                    ),
                    subtitle: Text(offerService.offers[index].address),
                  );
                },
              ),
            ],
          )),
    );
  }
}
