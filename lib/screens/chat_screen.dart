// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatefulWidget {
  static const String screenRoute = 'chat_screen';
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreentState();
}

class _ChatScreentState extends State<ChatScreen> {
  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;
  late User signedInUser; // this will give us the email
  String? messageText; // this will give us the message

  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        signedInUser = user;
        print(signedInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  //void getMessages() async {
  //  final messages = await _firestore.collection('messages').get();
  // for (var message in messages.docs) {
  //   print(message.data());
  // }
  //}

  void messagesStreams() async {
    await for (var snapshot in _firestore.collection('messages').snapshots()) {
      for (var message in snapshot.docs) {
        print(message.data());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 68, 122, 239),
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
            style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
          )
        ]),
        actions: [
          IconButton(
              onPressed: () {
                messagesStreams();
                // _auth.signOut();
                //Navigator.pop(context);
              },
              icon: Icon(Icons.download))
        ],
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          StreamBuilder<QuerySnapshot>(
            stream: _firestore.collection('messages').snapshots(),
            builder: (context, snapshot) {
              List<Text> messageWidgets = [];

              if (!snapshot.hasData) {
                // add here a spinner
              }

              final messages = snapshot.data!.docs;

              for (var message in messages) {
                final messageText = message.get('text');
                final messageSender = message.get('sender');
                final messageWidget = Text('$messageText - $messageSender');
                messageWidgets.add(messageWidget);
              }

              return Column(
                children: messageWidgets,
              );
            },
          ),
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
                    onChanged: (value) {
                      messageText = value;
                    },
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
                  onPressed: () {
                    _firestore.collection('messages').add({
                      'text': messageText,
                      'sender': signedInUser.email,
                    });
                  },
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
