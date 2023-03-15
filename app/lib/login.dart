import 'package:app/scan.dart';
import 'package:flutter/material.dart';

import 'mainp.dart';

class LoginPanel extends StatelessWidget {
  const LoginPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const SizedBox(
          height: double.infinity,
          width: double.infinity,
          child:  ColoredBox(color: Colors.blue)),
        Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(maxHeight: 200),
                  child: const Image(image: AssetImage("assets/logo.png"))),
                Flexible(
                  child: TextFormField(
                      decoration: const InputDecoration(labelText: "Username")),
                ),
                Flexible(
                  child: TextFormField(
                      decoration: const InputDecoration(labelText: "Password")),
                ),
                MaterialButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainPanel()));
                    },
                    child: const Text("Login ")),
                const SizedBox(
                  width: double.infinity,
                  height: 5,
                ),
                MaterialButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ScanPanel()));
                    },
                    child: const Icon(
                      Icons.qr_code,
                    ))
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
