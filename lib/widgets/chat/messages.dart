import 'package:chat_demo_app/packages.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('chat')
          .orderBy('messageTime', descending: true)
          .snapshots(),
      builder: (_, AsyncSnapshot<QuerySnapshot> qrSnapshot) {
        // if (snapshot.connectionState == ConnectionState.waiting) {
        //   return const Center(child: CircularProgressIndicator());
        // }
        if (qrSnapshot.hasError) {
          return const Center(child: Text('ERROR'));
        } else {
          final User? user = FirebaseAuth.instance.currentUser;
          final chatDocs = qrSnapshot.data!.docs;
          if (qrSnapshot.data!.docs != null) {
            return ListView.builder(
              reverse: true,
              itemCount: chatDocs.length,
              itemBuilder: (_, index) {
                return MessageBubble(
                  key: ValueKey(chatDocs[index].id),
                  userId: user!.uid,
                  username: chatDocs[index]['username'],
                  message: chatDocs[index]['text'],
                  isMe: chatDocs[index]['userId'] == user!.uid,
                );
              },
            );
          }
          return const Center(child: Text('ERROR'));
        }
      },
    );
  }
}
