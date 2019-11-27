import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:the_game/services/messageService.dart';

class MessagesPage extends StatelessWidget {
  final MessageService messageService = MessageService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Zprávy'),
        ),
        body: ListView.builder(
            itemCount: messageService.messages.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.person),
                title: Text(messageService.messages[index].name),
                subtitle: Text(messageService.messages[index].text),
              );
            }),
    );
  }
}
