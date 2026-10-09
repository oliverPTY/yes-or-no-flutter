import 'package:flutter/material.dart';
import 'package:yer_or_no/presentation/widgets/chats/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Amor de mi vida <3'),
        centerTitle: false,
        backgroundColor: Colors.white,
        leading: Container(
          margin: const EdgeInsets.only(left: 2),
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1GG-tsqQTivp8b6yMmHv6bR3QtX8-raq6mc_FQhOg0A&s=10'),
          ),
        ),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return MyMessageBubble();
                }
              )
            ),
            Text("Mensaje de prueba"),
          ],
        ),
      ),
    );
  }
}