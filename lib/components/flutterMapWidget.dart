import 'package:flutter/cupertino.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:the_game/security/ApiKeyLoader.dart';
import 'package:the_game/services/offerService.dart';

class FlutterMapWidget extends StatefulWidget {
  final LatLng position;
  final List<Marker> markers;
  final double zoom;

  FlutterMapWidget({this.position, this.markers, this.zoom});

  @override
  FlutterMapState createState() => FlutterMapState();
}

class FlutterMapState extends State<FlutterMapWidget> {
  String apiKeyValue = '';
  bool alreadyLoaded = false;

  FlutterMapState() {
    ApiKeyLoader(path: "config/api_keys.json").load("flutter_map").then((value) {
      setState(() {
        apiKeyValue = value.value;
        alreadyLoaded = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return (alreadyLoaded ? FlutterMap(
      options: MapOptions(
        center: widget.position,
        zoom: widget.zoom,
      ),
      layers: [
        TileLayerOptions(
          urlTemplate: "https://api.tiles.mapbox.com/v4/"
              "{id}/{z}/{x}/{y}@2x.png?access_token={accessToken}",
          additionalOptions: {
            'accessToken': apiKeyValue,
            'id': 'mapbox.streets',
          },
        ),
        MarkerLayerOptions(
          markers: widget.markers,
        ),
      ],
    ) : Text(''));
  }
}