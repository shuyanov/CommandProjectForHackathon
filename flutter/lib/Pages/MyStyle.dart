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
        Align(alignment: Alignment(-0.8, -0.9),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 40,
              child: const Text('AH',style: TextStyle(fontSize: 36),),
            ),
        ),
        Center(
          child: Text('First Page'),
        ),
        Align(alignment: Alignment(-0.50, -0.900),
              child: Text(
                  "Фио",
                  style: TextStyle(fontSize: 32)),
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