import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.blueAccent,
              onPressed: () {
                Navigator.pushNamed(context, '/service/cleaning');
              },
              child: Container(
                child: Center(
                    child: Text(
                      "Úklid",
                      style: TextStyle(fontSize: 20.0),
                    )
                ),
//                width: 250,
                height: 80,
              )
          ),
          Padding(padding: EdgeInsets.all(15.0)),
          FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.blueAccent,
              onPressed: () {
                Navigator.pushNamed(context, '/service/moving');
              },
              child: Container(
                child: Center(
                    child: Text(
                      "Stěhování",
                      style: TextStyle(fontSize: 20.0),
                    )
                ),
//                width: 250,
                height: 80,
                padding: EdgeInsets.all(0.8),
              )
          ),
          Padding(padding: EdgeInsets.all(15.0)),
          FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.blueAccent,
              onPressed: () {
                Navigator.pushNamed(context, '/service/reconstruction');
              },
              child: Container(
                child: Center(
                    child: Text(
                      "Rekonstrukce",
                      style: TextStyle(fontSize: 20.0),
                    )
                ),
//                width: 250,
                height: 80,
                padding: EdgeInsets.all(0.8),
              )
          ),
        ],
      ),
      padding: EdgeInsets.all(50.0),
    );
  }
}
