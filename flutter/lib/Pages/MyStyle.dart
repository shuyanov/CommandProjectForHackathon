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
<<<<<<<<< Temporary merge branch 1
        Center(
          child: Text('First Page'),
=========
        Align(alignment: Alignment(-0.50, -0.900),
              child: Text(
                  "Фио",
                  style: TextStyle(fontSize: 32)),
>>>>>>>>> Temporary merge branch 2
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