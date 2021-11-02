// import 'package:chat_demo_app/pages/initial_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import './packages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyChatApp());
}

class MyChatApp extends StatelessWidget {
  const MyChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter chat app',
      theme: MyThemeData(context),
      initialRoute: AuthPage.routeName,
      onGenerateRoute: RouteGenerator.onGnerateRoute,
    );
  }
}
