import 'package:chapuiapp/UI/AuthScreens/login.dart';
import 'package:chapuiapp/UI/AuthScreens/register.dart';
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
      home: const LogInScreen(),
      routes: {
        '/register': (context) => const RegisterScreen(),
        '/login': (context) => const LogInScreen(),
      },
    );
  }
}
