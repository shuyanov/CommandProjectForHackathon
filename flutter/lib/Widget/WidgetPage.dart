import 'package:flutter/material.dart';

class Box extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.cyan,
      ),
    );
  }
}

class MyStateless extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
        child: CircleAvatar(
          backgroundColor: Colors.blue,
          radius: 40,
          child: const Text('AH',style: TextStyle(fontSize: 36),),
        )
    );
  }
}

class UserText extends StatelessWidget {
  final String text;
  const UserText({
    Key? key,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      height: 100,
      alignment: Alignment.center,
      child: Text(text, style: TextStyle(color: Colors.blue,fontSize: 24),),
    );
  }
}