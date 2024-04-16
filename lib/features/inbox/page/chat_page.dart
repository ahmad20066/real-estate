import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sonata Williams'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.phone_enabled_outlined,
            ),
          )
        ],
      ),
      body: Column(),
    );
  }
}
