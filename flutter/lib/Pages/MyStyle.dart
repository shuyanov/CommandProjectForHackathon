import 'package:flutter/material.dart';

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      controller: controller,
      children: const <Widget>[
        Align(alignment: Alignment(-0.90, -0.900),
              child:
              CircleAvatar(
                backgroundColor: Colors.yellowAccent,
                child: const Text('MH',style: TextStyle(fontSize: 36),),
                radius: 40,
              ),
              // Text("Фио",style: TextStyle(fontSize: 32),),
          ),
        Center(
          child: Text('Second Page'),
        ),
        Center(
          child: Text('Third Page'),
        ),
      ],
    );
  }
}