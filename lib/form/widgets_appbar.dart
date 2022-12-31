import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppbar({super.key});

  @override
  Widget build(BuildContext context) => AppBar(
      title: const Text(
        'AppBar',
        style:
          TextStyle(
            fontSize: 20, 
            fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
        ),
      elevation: 5,
      centerTitle: true,
      toolbarHeight: 60,
      actions: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.logout),
              iconSize: 24,
              tooltip: 'Cerrar sesión',
              onPressed: () async {
                FirebaseAuth.instance.signOut();
              },
            ),
          ],
        ),
      ],
    );
    
      @override
      Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  }