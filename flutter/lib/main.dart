import 'package:flutter/material.dart';
import 'package:command_flutter/Bar/BottomBar.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color.fromARGB(255, 210, 227, 246)),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}