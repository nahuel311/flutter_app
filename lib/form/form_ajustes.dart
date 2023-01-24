import 'package:flutter/material.dart';
import 'widgets_appbar.dart';
import 'widgets_drawer.dart';

class FormAjustes extends StatelessWidget {
  const FormAjustes({super.key});

  @override
  Widget build(BuildContext context) => const Scaffold(
    appBar: MyAppbar(),
    drawer: MyDrawer(),
    
    body: Center(
      child:  Text('Ajustes') 
    ),
  );
}
