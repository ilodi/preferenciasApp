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
}
