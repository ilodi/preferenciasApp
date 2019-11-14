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
      drawer: _crearMenu(),
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

  Drawer _crearMenu() {
    return Drawer(
      elevation: 0.0,
      //
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/menu-img.jpg'),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            leading: Icon(Icons.pages, color: Colors.blue),
            title: Text('Pages'),
            onTap: (){
              
            },
          )
        ],
      ),
    );
  }
}
