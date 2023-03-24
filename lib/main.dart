import 'package:chapuiapp/UI/AuthScreens/login.dart';
import 'package:chapuiapp/UI/AuthScreens/register.dart';
import 'package:chapuiapp/UI/AuthScreens/verify_account.dart';
import 'package:chapuiapp/UI/ChatScreens/chat_screen.dart';
import 'package:chapuiapp/UI/ChatScreens/communites_tabs.dart';
import 'package:chapuiapp/UI/ChatScreens/community_screen.dart';
import 'package:chapuiapp/UI/ChatScreens/community_screen_2.dart';
import 'package:chapuiapp/UI/ChatScreens/join_comm.dart';
import 'package:chapuiapp/UI/ChatScreens/join_comm_chat.dart';
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
      home: const RegisterScreen(),
      routes: {
        '/register': (context) => const RegisterScreen(),
        '/login': (context) => const LogInScreen(),
        '/verify': (context) => const VerificationScreen(),
        '/chatscreen': (context) => const ChatScreen(),
        '/commtabs': (context) => const CommunitiesTabs(),
        '/commscreen': (context) => const CommunityScreen(),
        '/commscreen2': (context) => const CommunityScreen2(),
        '/joincomm': (context) => const JoinCommunity(),
        '/joincommchat': (context) => const JoinCommunityChat(),
      },
    );
  }
}
