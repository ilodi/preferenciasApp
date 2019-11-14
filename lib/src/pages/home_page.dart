import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  //mandar datos para las rutas es como un estandar
  static final String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prefrencia de usuari'),
      ),
      body: Column(
        children: <Widget>[
          Text('Color Secundario'),
          Divider(height: 20.0),
          Text('Genero'),
          Divider(height: 20.0),
          Text('Nombre usuario:'),
          Divider(height: 20.0)
        ],
      ),
    );
  }
}
