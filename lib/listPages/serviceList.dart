import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServiceListPage extends StatefulWidget {
  final String title;

  ServiceListPage(this.title);

  @override
  ServiceListState createState() => ServiceListState();
}

class ServiceListState extends State<ServiceListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.widget.title),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
                'Service ' +
                    index.toString()),
          );
        },
      ),
    );
  }
}
