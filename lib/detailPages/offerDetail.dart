import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:the_game/model/offerDetail.dart';

class OfferDetailPage extends StatelessWidget {
  final List<String> people = ["Jakub Čudka", "Martin Kameník"];
  final List<String> jobs = ["Bezpečnostní expert", "Softwarový vývojář"];

  @override
  Widget build(BuildContext context) {
    final OfferDetail offer = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail inzerátu'),
      ),
      body: Container(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(20),
          children: <Widget>[
            Icon(Icons.home, size: 150.0),
//            Padding(padding: EdgeInsets.all(5.0)),
            Text(offer.title(), style: TextStyle(fontSize: 24)),
            Padding(padding: EdgeInsets.all(5.0)),
            Text(offer.description),
            Padding(padding: EdgeInsets.all(10.0)),
            Text("Nájemné", style: TextStyle(fontSize: 20)),
            Padding(padding: EdgeInsets.all(5.0)),
            Text(offer.fixedRentAmount.toString() + " + " + offer.additionalVariableRentAmount.toString() +
                " = " + offer.fullRentAmount().toString() + " Kč"),
            Padding(padding: EdgeInsets.all(10.0)),
            Text("Adresa", style: TextStyle(fontSize: 20)),
            Text(offer.address),
            Padding(padding: EdgeInsets.all(10.0)),
            Container(
              child: FlutterMap(
                options: MapOptions(
                  center: LatLng(offer.latitude, offer.longitude),
                  zoom: 14,
                ),
                layers: [
                  TileLayerOptions(
                    urlTemplate: "https://api.tiles.mapbox.com/v4/"
                        "{id}/{z}/{x}/{y}@2x.png?access_token={accessToken}",
                    additionalOptions: {
                      'accessToken':
                          'sk.eyJ1IjoiamFubWF0IiwiYSI6ImNrMmprZjNxcDB2OHIzY21saXAxZnM4Y2cifQ.NJd_D4fbuQbvZb3hyQIZDQ',
                      'id': 'mapbox.streets',
                    },
                  ),
                  MarkerLayerOptions(
                    markers: [
                      Marker(
                        width: 80.0,
                        height: 80.0,
                        point: LatLng(offer.latitude, offer.longitude),
                        builder: (ctx) => Container(
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
              height: 300,
              decoration: BoxDecoration(
                  border: Border.all(
                width: 1.0,
                color: Colors.black,
              )),
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            Text("Vybavení", style: TextStyle(fontSize: 20)),
            Text(" - Pračka"),
            Text(" - Televize"),
            Text(" - Internet"),
            Text(" - Sporák"),
            Text(" - Myčka"),
//            ListView.builder(
//              itemCount: offer.equipment.length,
//              itemBuilder: (context, index) {
//                return Text(" - " + offer.equipment[index]);
//            }),
            Padding(padding: EdgeInsets.all(10.0)),
            Text("Spolubydlící", style: TextStyle(fontSize: 20)),
            ListTile(
              title: Text(people[0]),
              subtitle: Text(jobs[0]),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text(people[1]),
              subtitle: Text(jobs[1]),
              leading: Icon(Icons.person),
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            FlatButton(
                color: Colors.blue,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.blueAccent,
                onPressed: () {
                  Navigator.pushNamed(context, "/contact");
                },
                child: Container(
                  child: Center(
                      child: Text(
                    "Chci spolubydlet",
                    style: TextStyle(fontSize: 20.0),
                  )),
                  //width: 180,
                  height: 75,
                )),
          ],
//          margin: EdgeInsets.all(10),
        ),
      ),
    );
  }
}
