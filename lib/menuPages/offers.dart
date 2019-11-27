import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
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
                child: FlutterMap(
                  options: MapOptions(
                    center: LatLng(50.0790083, 14.4458433),
                    zoom: 11.7,
                  ),
                  layers: [
                    TileLayerOptions(
                      urlTemplate: "https://api.tiles.mapbox.com/v4/"
                          "{id}/{z}/{x}/{y}@2x.png?access_token={accessToken}",
                      additionalOptions: {
                        'accessToken': 'sk.eyJ1IjoiamFubWF0IiwiYSI6ImNrMmprZjNxcDB2OHIzY21saXAxZnM4Y2cifQ.NJd_D4fbuQbvZb3hyQIZDQ',
                        'id': 'mapbox.streets',
                      },
                    ),
                    MarkerLayerOptions(
                      markers: [
                        Marker(
                          width: 80.0,
                          height: 80.0,
                          point: LatLng(50.1251247, 14.4573619),
                          builder: (ctx) =>
                          Container(
                            child: Icon(
                              Icons.location_on,
                              size: 50,
                            ),
                          ),
                        ),
                        Marker(
                          width: 80.0,
                          height: 80.0,
                          point: LatLng(50.0225914, 14.4402061),
                          builder: (ctx) =>
                              Container(
                                child: Icon(
                                  Icons.location_on,
                                  size: 50,
                                ),
                              ),
                        ),
                        Marker(
                          width: 80.0,
                          height: 80.0,
                          point: LatLng(50.1062025, 14.3899969),
                          builder: (ctx) =>
                              Container(
                                child: Icon(
                                  Icons.location_on,
                                  size: 50,
                                ),
                              ),
                        ),
                      Marker(
                          width: 80.0,
                          height: 80.0,
                          point: LatLng(50.0730336, 14.4049900),
                          builder: (ctx) =>
                              Container(
                                child: Icon(
                                  Icons.location_on,
                                  size: 50,
                                ),
                              ),
                        ),
                      Marker(
                          width: 80.0,
                          height: 80.0,
                          point: LatLng(50.1309475, 14.5084703),
                          builder: (ctx) =>
                              Container(
                                child: Icon(
                                  Icons.location_on,
                                  size: 50,
                                ),
                              ),
                        ),
                      ],
                    ),
                  ],
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
                    leading: IconButton(
                      icon: Icon(Icons.home),
//                      onPressed: () => Navigator.pushNamed(
//                          context, '/offer/detail',
//                          arguments: TaskDetailArguments(
//                              offers[index],
//                              'Info: Opravdu dlouhé přesto stručné info o inzerátu. - ' + offers[index],
//                              places[index]
//                          )
//                      ),
                    ),
                    title: Text(offerService.offers[index].title()),
                    onTap: () => Navigator.pushNamed(
                      context, '/offer/detail',
                      arguments: offerService.offers[index],
                    ),
                    subtitle: Text(offerService.offers[index].fullRentAmount().toString() + " Kč,   " + offerService.offers[index].address),
                  );
                },
              ),
            ],
          )),
    );
  }
}
