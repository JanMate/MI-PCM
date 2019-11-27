import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_game/model/offerDetail.dart';

class MyNewOfferPage extends StatelessWidget {
  MyNewOfferPage();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Text(
            "Vložit nový inzerát",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          Padding(padding: EdgeInsets.all(20.0)),
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Pole musí být vyplněné';
              }
              return null;
            },
            initialValue: "Typ bytu/pokoje (velikost)",
//            onTap: () => value,
          ),
          Padding(padding: EdgeInsets.all(20.0)),
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Pole musí být vyplněné';
              }
              return null;
            },
            initialValue: "Popis inzerátu",
            minLines: 5,
            maxLines: 5,
//            onTap: () => value,
          ),
          Padding(padding: EdgeInsets.all(20.0)),
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Pole musí být vyplněné';
              }
              return null;
            },
            initialValue: "Nájemné pevné",
//            onTap: () => value,
          ),
          Padding(padding: EdgeInsets.all(20.0)),
          TextFormField(
            validator: (value) {

            },
            initialValue: "Nájemné dodatečné - energie (nepovinné)",
//            onTap: () => value,
          ),
          Padding(padding: EdgeInsets.all(20.0)),
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Pole musí být vyplněné';
              }
              return null;
            },
            initialValue: "Adresa",
//            onTap: () => value,
          ),
          Padding(padding: EdgeInsets.all(20.0)),
          Text("Vybavení", style: TextStyle(fontSize: 20)),
          ListTile(
            leading: Checkbox(
              value: false,
              //onChanged: null,
            ),
            title: Text("Pračka"),
          ),
          ListTile(
            leading: Checkbox(
              value: false,
              //onChanged: null,
            ),
            title: Text("Televize"),
          ),
          ListTile(
            leading: Checkbox(
              value: false,
              //onChanged: null,
            ),
            title: Text("Sporák s troubou"),
          ),
          ListTile(
            leading: Checkbox(
              value: false,
              //onChanged: null,
            ),
            title: Text("Internet"),
          ),
          ListTile(
            leading: Checkbox(
              value: false,
              //onChanged: null,
            ),
            title: Text("Myčka"),
          ),
          ListTile(
            leading: Checkbox(
              value: false,
              //onChanged: null,
            ),
            title: Text("Mikrovlnná trouba"),
          ),
          Padding(padding: EdgeInsets.all(20.0)),
          ListTile(
            leading: Icon(Icons.add_a_photo),
            title: Text("Nahrát foto"),
          ),
          Padding(padding: EdgeInsets.all(10.0)),
          Text("Spolubydlící", style: TextStyle(fontSize: 20)),
          ListTile(
            leading: Icon(Icons.person_add),
            title: Text("Přidat spolubydlícího"),
          ),
          Padding(padding: EdgeInsets.all(20.0)),
          FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.blueAccent,
              onPressed: () => (
                  _formKey.currentState.validate() ? ""
//                    Navigator.pushNamed(
//                      context, '/offer/detail',
//                      arguments: OfferDetail(
//                          "Byt 3+kk - Kobylisy",
//                          'Info: Opravdu dlouhé přesto stručné info o inzerátu. - Byt 3+kk - Kobylisy',
//                          "Kobylisy"
//                      )
                  /*)*/ :
                  ""
              ),
              child: Container(
                child: Center(
                    child: Text(
                      "Vložit",
                      style: TextStyle(fontSize: 20.0),
                    )),
                width: 150,
                height: 80,
              )),
        ],
      ),
      padding: EdgeInsets.all(15.0),
    );
  }
}