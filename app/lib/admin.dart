import 'package:flutter/material.dart';

class admin extends StatefulWidget {
  const admin({super.key});

  @override
  State<admin> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<admin> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
Row(
  mainAxisSize: MainAxisSize.max,
  children: [
    defaultButton(function: (){}, text: "Upload .xls"),
    SizedBox(
      width: 5,
    ),
    defaultButton(function: (){}, text: "Download .xls"),
],), 
SizedBox(
          height: 5,
        ),
defaultButton(function: () {}, text: "View Stat"),
      ],
    );
  }
}