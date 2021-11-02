import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../packages.dart';

class ChatPage extends StatelessWidget {
  static const routeName = '/chat';
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('test'),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('chats/7aYUWcDI7chU1EbPEMMq/messages')
            .snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return const Center(child: Text('ERROR!'));
          }
          final docs = snapshot.data!.docs;
          return ListView.builder(
            itemBuilder: (_, index) {
              return Container(
                padding: const EdgeInsets.all(8),
                child: Text(docs[index]['text']),
              );
            },
            itemCount: snapshot.data!.docs.length,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          // FirebaseFirestore.instance
          //     .collection('chats/7aYUWcDI7chU1EbPEMMq/messages')
          //     .add(
          //       'text': 'Heyyyyydysdysy!',
          //     );
        },
      ),
    );
  }
}
