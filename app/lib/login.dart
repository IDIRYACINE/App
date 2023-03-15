import 'package:flutter/material.dart';

import 'mainp.dart';

class LoginPanel extends StatelessWidget {
  const LoginPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 500),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("logo.png"),
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
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const MainPanel()));
                  },
                  child: const Text("Login ")),
              const SizedBox(
                width: double.infinity,
                height: 5,
              ),
              MaterialButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const ScanPanel()));
                  },
                  child: const Icon(
                    Icons.qr_code,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
