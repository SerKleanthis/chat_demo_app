import 'package:chat_demo_app/pages/chat_page.dart';
import 'package:chat_demo_app/pages/initial_page.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> onGnerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => InitialPage());
      case '/chat-page':
        return MaterialPageRoute(builder: (_) => ChatPage());
    }

    return _errorRoute();
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
