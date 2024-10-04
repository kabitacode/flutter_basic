import 'package:flutter/material.dart';
import 'package:flutter_basic/screens/MainScreen.dart';
import 'package:flutter_basic/screens/home.dart';
import 'package:flutter_basic/screens/web/MainWebScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MainWebScreen(),
    );
  }
}
