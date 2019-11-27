import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactOfferPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Chci spolubydlet - Zpráva'),
        ),
        body: Container(
            child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.all(20),
                children: <Widget>[
                  TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Pole musí být vyplněné';
                      }
                      return null;
                    },
                    initialValue: "Text zprávy\nZde se ideálně věrně popište, aby váš budoucí spolubydlící věděl, že jste ten pravý spolubydlící.",
                    minLines: 5,
                    maxLines: 5,
//            onTap: () => value,
                  ),
                  Padding(padding: EdgeInsets.all(20.0)),
                  FlatButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      disabledColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      padding: EdgeInsets.all(8.0),
                      splashColor: Colors.blueAccent,
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                      child: Container(
                        child: Center(
                            child: Text(
                              "Odeslat zprávu",
                              style: TextStyle(fontSize: 20.0),
                            )),
                        //width: 180,
                        height: 75,
                      )),
                ],
            )
        )
    );
  }
}