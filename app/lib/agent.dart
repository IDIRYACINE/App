import 'package:flutter/material.dart';
import 'package:app/composents/defaultButton.dart';

class agent extends StatefulWidget {
  const agent({super.key});

  @override
  State<agent> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<agent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        defaultButton(function: () {}, text: "Scan"),
        SizedBox(
          height: 5,
        ),
        defaultButton(function: () {}, text: "Verify"),
      ],
    );
  }
}
