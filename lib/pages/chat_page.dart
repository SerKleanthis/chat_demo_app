import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:developer';

class ChatPage extends StatelessWidget {
  static const routeName = '/chat-page';
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('test'),
      ),
      body: Text('dasdas'),

      // FutureBuilder(
      //   future: Firebase.initializeApp(),
      //   builder: (_, snapshot) {
      //     if (snapshot.hasError) {
      //       return const Center(child: Text('Error'));
      //     }
      //     if (snapshot.connectionState == ConnectionState.waiting) {
      //       return const Center(child: CircularProgressIndicator());
      //     }
      //     return ListView.builder(
      //       itemBuilder: (_, index) => Container(
      //         padding: const EdgeInsets.all(8),
      //         child: Text('Chat app'),
      //       ),
      //       itemCount: 10,
      //     );
      //   },
      // ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          // await Firebase.initializeApp();

          FirebaseFirestore.instance
              .collection('chats/7aYUWcDI7chU1EbPEMMq/messages')
              .snapshots()
              .listen((data) {
            data.docs.forEach((element) {
              print(element['text']);
            });
          });
        },
      ),
    );
  }
}
