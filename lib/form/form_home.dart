import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'widgets_appbar.dart';
import 'widgets_drawer.dart';

class FormHome extends StatelessWidget {
  FormHome ({super.key});
  
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: const MyAppbar(),
    drawer: const MyDrawer(),

    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '¡Hola ${user.email!}!',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15,)
        ] 
      ),
    ),
    
    floatingActionButton: FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => {},
    ),
  );
}