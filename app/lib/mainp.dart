import 'dart:math';

import 'package:flutter/material.dart';

class MainPanel extends StatelessWidget {
  const MainPanel({super.key});

  @override
  Widget build(BuildContext context) {

    int index = Random().nextInt(3);

    return Scaffold(
        body: Stack(
      children: [
        Image.asset("main.png"),
        Positioned.directional(
            bottom: 0,
            textDirection: TextDirection.ltr,
            child: Image.asset("home.png"))
      ],
    ));
  }
}
