import 'package:chapuiapp/UI/AuthScreens/login.dart';
import 'package:chapuiapp/UI/AuthScreens/register.dart';
import 'package:chapuiapp/UI/ChatScreens/chat_screen.dart';
import 'package:chapuiapp/UI/ChatScreens/communites_tabs.dart';
import 'package:chapuiapp/UI/ChatScreens/community_screen.dart';
import 'package:chapuiapp/UI/ChatScreens/community_screen_2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const CommunitiesTabs(),
      routes: {
        '/register': (context) => const RegisterScreen(),
        '/login': (context) => const LogInScreen(),
      },
    );
  }
}
