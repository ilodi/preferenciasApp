import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario {
//patron singleton
  static final PreferenciasUsuario _instancia =
      new PreferenciasUsuario._internal();

//Constructor
  factory PreferenciasUsuario() {
    return _instancia;
  }

//Inicializar // CONSTRUCTOR
  PreferenciasUsuario._internal();

  SharedPreferences _prefs;

  initPreft() async {
    _prefs = await SharedPreferences.getInstance();
  }

//configs
  //GETS Y SET DEL GENERO
  get genero {
    return _prefs.getInt('genero') ?? 1;
  }

//establecer un valor al genero
  set genero(int value) {
    _prefs.setInt('genero', value);
  }

  //GETS Y SET DEL colorSecundario
  get colorSecundario {
    return _prefs.getBool('colorSecundario') ?? false;
  }

//establecer un valor al genero
  set colorSecundario(bool value) {
    _prefs.setBool('colorSecundario', value);
  }

  //GETS Y SET DEL nombreUsuario
  get nombreUsuario {
    return _prefs.getString('nombreUsuario') ?? '';
  }

//establecer un valor al genero
  set nombreUsuario(String value) {
    _prefs.setString('nombreUsuario', value);
  }

    //GETS Y SET DEL ultimaPagina
  get ultimaPagina {
    return _prefs.getString('ultimaPagina') ?? 'home';
  }

//establecer un valor al genero
  set ultimaPagina(String value) {
    _prefs.setString('ultimaPagina', value);
  }
}
