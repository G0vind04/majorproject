import 'package:flutter/material.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const SportOnApp());
}

class SportOnApp extends StatelessWidget {
  const SportOnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sport On',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}
