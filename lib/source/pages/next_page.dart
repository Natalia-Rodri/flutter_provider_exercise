import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uso_gestion_estados/providers/heroes_info.dart';
import 'package:uso_gestion_estados/source/pages/widgets/super_floatingaction.dart';
 
 
class NextPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final heroesInfo = Provider.of<HeroesInfo>(context);

    return Scaffold(
        appBar: AppBar(title: Text('Bienvenido'),),
        body: Center(child: Text("Hola "+heroesInfo.heroe)),
        floatingActionButton: SuperFLoatingAction(  pagina: "home", ),
    );
  }
}