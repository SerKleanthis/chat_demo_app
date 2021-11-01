import 'package:chat_demo_app/pages/initial_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyChatApp());
}

class MyChatApp extends StatelessWidget {
  const MyChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter chat app',
      initialRoute: InitialPage.routeName,
      // onGenerateRoute: ,
    );
  }
}
