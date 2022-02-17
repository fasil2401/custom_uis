import 'package:custom/screens/first.dart';
import 'package:custom/screens/second.dart';
import 'package:custom/screens/third.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UIs',
      theme: ThemeData(       
        primarySwatch: Colors.blue,
      ),
      home: const Payments(),
      debugShowCheckedModeBanner: false,
    );
  }
}

