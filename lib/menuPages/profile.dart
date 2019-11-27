import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage();

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Row(children: <Widget>[
              Text('Jan Matějka',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Padding(padding: EdgeInsets.only(left: 60),),
              IconButton(
                icon: Icon(Icons.lock),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.border_color),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () => Navigator.pushNamed(context, '/settings'),
              ),
            ],
          ),
          Container(
            child: Icon(
              Icons.person,
              size: 180,
            ),
          ),
          Text("Software developer"),
          Padding(padding: EdgeInsets.all(5.0)),
          Text("ČVUT FIT"),
          Padding(padding: EdgeInsets.all(5.0)),
          Text("Praha, Dejvice"),
          Padding(padding: EdgeInsets.all(5.0)),
          Text("Hodnocení: 4,5"),
          Padding(padding: EdgeInsets.all(15.0)),
          Container(
            child: FlatButton(
                color: Colors.blue,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.blueAccent,
                onPressed: () {

                },
                child: Container(
                  child: Center(
                      child: Text(
                        "Získat prémiový účet",
                        style: TextStyle(fontSize: 20.0),
                      )),
                  //width: 180,
                  height: 75,
                )
            ),
            width: 100,
          ),
          Padding(padding: EdgeInsets.all(15.0)),
          Text("Využité služby", style: TextStyle(fontSize: 20)),
          Padding(padding: EdgeInsets.all(5.0)),
          Text("Zatím jste nevyužil žádných doplňkových služeb."),
          Padding(padding: EdgeInsets.all(15.0)),
          Container(
            child: FlatButton(
                color: Colors.blue,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.blueAccent,
                onPressed: () {

                },
                child: Container(
                  child: Center(
                      child: Text(
                        "Nastavit metodu placení",
                        style: TextStyle(fontSize: 20.0),
                      )),
                  //width: 180,
                  height: 70,
                )
            ),
            width: 100,
          ),
        ],
      ),
      padding: EdgeInsets.all(20.0),
    );
  }
}
