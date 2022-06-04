import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseauthexample/Appservices/auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Column(
          children: [
            Text("logged in as $User"),
            ElevatedButton(
              onPressed: () {
                context.read<AuthService>().signOut();
              },
              child: Text("Sign out".toUpperCase()),
            )
          ],
        ),
      ),
    );
  }
}
