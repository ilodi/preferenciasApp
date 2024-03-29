import 'package:flutter/material.dart';
import 'package:preferenciasusuarioapp/src/pages/home_page.dart';
import 'package:preferenciasusuarioapp/src/pages/settings_page.dart';
import 'package:preferenciasusuarioapp/src/share_prefs/preferencias_usuario.dart';

void main() async {
//trae las preferencia antes de que comienze la app
//espera que haga la consulta y inirPreft
//en toda la app hay clase
  final prefs = new PreferenciasUsuario();
  await prefs.initPreft();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   final prefs = new PreferenciasUsuario();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Preferencias',
      initialRoute: prefs.ultimaPagina ,
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.routeName: (BuildContext context) => HomePage(),
        SettingsPage.routeName: (BuildContext context) => SettingsPage(),
      },
    );
  }
}
