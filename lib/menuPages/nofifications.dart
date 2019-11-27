import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:the_game/services/notificationService.dart';

class NotificationPage extends StatelessWidget {
  final NotificationService notificationService = NotificationService();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notificationService.notifications.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.person),
          title: Text(notificationService.notifications[index].title),
          subtitle: Text(notificationService.notifications[index].description),
        );
      }
    );
  }

}