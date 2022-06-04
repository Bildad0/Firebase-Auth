import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Appservices/auth_service.dart';

class SignInPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TextField(
          controller: emailController,
          decoration: const InputDecoration(
            labelText: "Email",
          ),
        ),
        TextField(
          controller: passwordController,
          decoration: const InputDecoration(
            labelText: "Password",
          ),
        ),
        ElevatedButton(
          onPressed: () {
            context.read<AuthService>().signIn(
                  email: emailController.text.trim(),
                  password: passwordController.text.trim(),
                );
          },
          child: const Text("Sign in"),
        ),
      ]),
    );
  }
}
