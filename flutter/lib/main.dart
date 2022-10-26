import 'package:flutter/material.dart';
import 'User/DataUser.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main(){
  debugPaintSizeEnabled = true;
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        home: UserData(),
    );
  }
}
