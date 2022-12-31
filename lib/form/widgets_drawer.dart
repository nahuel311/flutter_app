import 'form_home.dart';
import 'package:flutter/material.dart';
import 'form_ajustes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
    child: Container(
      color: Colors.grey[300],
      child: ListView(
        children: [
          const DrawerHeader(
            child: Center(
              child: Text(
                'Distribuidora',
                style: TextStyle(
                  fontSize: 30
                ),
              ),
            )
          ),

          ListTile(
            leading: const Icon(Icons.home),
            title: const Text(
              'Inicio',
              style: TextStyle(
                  fontSize: 18
              ),
            ),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => FormHome())),
          ),

          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text(
              'Ajustes',
              style: TextStyle(
                  fontSize: 18
              ),
            ),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => FormAjustes())),
          )
        ],
      ),
    ),
  );
}