import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/pages/settings_page.dart';
import 'package:preferencias_usuario/src/share_prefes/preferencias_usuario.dart';
import 'package:preferencias_usuario/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';
  final prefs= new PreferenciasUsuario();
  @override
  Widget build(BuildContext context) {
   prefs.ultimaPagina=HomePage.routeName;

    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de usuario'),
         backgroundColor: (prefs.colorSecundario ? Colors.teal : Colors.red),
      ),
     
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color Secundario ${prefs.colorSecundario}'),
          Divider(),
          Text('Genero: ${prefs.genero}'),
          Divider(),
          Text('Nombre usuario: ${prefs.nombreUsuario}'),
          Divider()
        ],
      ),
    );
  }

 
}
