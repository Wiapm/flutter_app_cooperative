// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  static const String screenRoute = 'chat_screen';
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreentState();
}

class _ChatScreentState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 129, 196),
        title: Row(children: [
          Image.asset(
            'images/chat.png',
            height: 34,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            'Message me',
            style: TextStyle(color: Colors.white),
          )
        ]),
        actions: [
          IconButton(
              onPressed: () {
                // add here log out function
              },
              icon: Icon(Icons.close))
        ],
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
              color: const Color.fromARGB(255, 99, 192, 238),
              width: 2,
            ))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: TextField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      hintText: 'Ecris votre message ici ...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'envoyez',
                    style: TextStyle(
                        color: Color.fromARGB(255, 27, 81, 175),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}