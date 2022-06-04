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
      appBar: AppBar(
        elevation: 0,
      ),
      body: Container(
        color: Colors.blue,
        child: Column(
          children: [
            const Icon(Icons.book_online),
            const Text('Connect'),
            SizedBox(
              height: 300,
              child: Card(
                margin: const EdgeInsets.fromLTRB(30, 100, 30, 0),
                color: Colors.white,
                child: Column(children: [
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
              ),
            ),
            Expanded(
                child: GestureDetector(
              child: const Text("Forgot Password?"),
            ))
          ],
        ),
      ),
    );
  }
}
