import 'package:flutter/material.dart';
import 'package:preferenciasusuarioapp/src/widgets/menu_widget.dart';

class SettingsPage extends StatelessWidget {
  //mandar datos para las rutas es como un estandar
  static final String routeName = 'settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes'),
      ),
      drawer: MenuWidget(),
      body: Column(
        children: <Widget>[
          Text('Color Secundario'),
        ],
      ),
    );
  }
}
