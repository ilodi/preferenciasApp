import 'package:flutter/material.dart';
import 'package:preferenciasusuarioapp/src/share_prefs/preferencias_usuario.dart';
import 'package:preferenciasusuarioapp/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  //mandar datos para las rutas es como un estandar
  static final String routeName = 'home';

//accede a share
  final prefs = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prefrencia de usuari'),
        backgroundColor: (prefs.colorSecundario) ? Colors.teal : Colors.blue,
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color Secundario ${prefs.colorSecundario}'),
          Divider(height: 20.0),
          Text('Genero: ${prefs.genero}'),
          Divider(height: 20.0),
          Text('Nombre usuario: ${prefs.nombreUsuario}'),
          Divider(height: 20.0)
        ],
      ),
    );
  }
}
