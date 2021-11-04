import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../packages.dart';

class ChatPage extends StatelessWidget {
  static const routeName = '/chat';
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
        actions: [
          DropdownButton(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            items: [
              DropdownMenuItem(
                child: Row(
                  children: const [
                    Icon(Icons.exit_to_app),
                    SizedBox(width: 8),
                    Text('Logout'),
                  ],
                ),
                value: 'logout',
                onTap: () => FirebaseAuth.instance.signOut(),
              )
            ],
            onChanged: (itemIdentifier) {
              if (itemIdentifier == 'logout') {
                FirebaseAuth.instance.signOut();
              }
            },
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(child: Messages()),
            NewMessage(),
          ],
        ),
      ),

      // StreamBuilder(
      //   stream: FirebaseFirestore.instance
      //       .collection('chats/7aYUWcDI7chU1EbPEMMq/messages')
      //       .snapshots(),
      //   builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
      //     if (snapshot.connectionState == ConnectionState.waiting) {
      //       return const Center(child: CircularProgressIndicator());
      //     }
      //     if (snapshot.hasError) {
      //       return const Center(child: Text('ERROR!'));
      //     }
      //     final docs = snapshot.data!.docs;
      //     return ListView.builder(
      //       itemBuilder: (_, index) {
      //         return Container(
      //           padding: const EdgeInsets.all(8),
      //           child: Text(docs[index]['text']),
      //         );
      //       },
      //       itemCount: snapshot.data!.docs.length,
      //     );
      //   },
      // ),
      // floatingActionButton: FloatingActionButton(
      //   child: const Icon(Icons.add),
      //   onPressed: () {
      //     // FirebaseFirestore.instance
      //     //     .collection('chats/7aYUWcDI7chU1EbPEMMq/messages')
      //     //     .add(
      //     //       'text': 'Heyyyyydysdysy!',
      //     //     );
      //   },
      // ),
    );
  }
}
