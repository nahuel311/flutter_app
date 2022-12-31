import 'package:comisionistas/form/form_login.dart';
import 'package:comisionistas/form/form_home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FormMain extends StatelessWidget {
  const FormMain ({super.key});
  
  @override
  Widget build(BuildContext context) => Scaffold(
    body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return FormHome();
        }
        else {
          return FormLogin();
        }
      })
    );
}