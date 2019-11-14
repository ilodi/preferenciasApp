import 'package:flutter/material.dart';

import 'package:preferenciasusuarioapp/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  //mandar datos para las rutas es como un estandar
  static final String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prefrencia de usuari'),
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
