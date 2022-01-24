import 'package:flutter/material.dart';
import 'package:alvinapp/pages/home.dart';

void main() {
  runApp(const AlvinApp());
}

Color alvin = const Color(0xFF05648a);

class AlvinApp extends StatelessWidget {
  const AlvinApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alvin App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(title: 'AlvinApp Home'),
    );
  }
}
