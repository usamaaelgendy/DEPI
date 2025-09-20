import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignInScreen(
        providers: [EmailAuthProvider() , GoogleProvider(clientId: 'project-571836091673')],
        headerBuilder: (context, constraints, shrinkOffset) {
          return const Padding(
            padding: EdgeInsets.all(20),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image(image: AssetImage('assets/logo.png')),
            ),
          );
        },
        subtitleBuilder: (context, action) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              action == AuthAction.signIn
                  ? 'Welcome, please sign in!'
                  : 'Welcome, please sign up!',
            ),
          );
        },
      ),
    );
  }
}
