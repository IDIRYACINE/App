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
        const Image(image: AssetImage("assets/main.png")),
        const Image(image: AssetImage("assets/home.png")),
        SizedBox(
          width: 800,
          child: Column(
            children: [
              Row(
                children: [
                  MaterialButton(
                      onPressed: () {}, child: const Text("Upload .xls")),
                  MaterialButton(
                    onPressed: () {},
                    child: const Text("Download .xls"),
                  ),
                ],
              ),
              MaterialButton(
                onPressed: () {},
                child: const Text("ViewStats"),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
