import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {

  //mandar datos para las rutas es como un estandar
  static final String routeName = 'settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes'),
      ),
      body: Column(
        children: <Widget>[
          Text('Color Secundario'),
         
        ],
      ),
    );
  }
}
