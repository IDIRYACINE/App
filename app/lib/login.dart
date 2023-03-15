import 'package:flutter/material.dart';

class LoginPanel extends StatelessWidget {
  const LoginPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Image.asset("logo.png"),
        TextFormField(decoration: const InputDecoration(labelText: "Username")),
        TextFormField(decoration: const InputDecoration(labelText: "Password")),
        MaterialButton(onPressed: () {}, child: const Text("Login ")),
        const SizedBox(
          width: double.infinity,
          height: 5,
        ),
      ]),
    );
  }
}
