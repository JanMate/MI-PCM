import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CheckBoxTile extends StatefulWidget {
  final String text;

  CheckBoxTile({this.text});

  @override
  CheckBoxTileState createState() => CheckBoxTileState();
}

class CheckBoxTileState extends State<CheckBoxTile> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: checked,
        onChanged: (value){
          setState(() {
            checked = value;
          });
        },
      ),
      title: Text(this.widget.text),
    );
  }
}