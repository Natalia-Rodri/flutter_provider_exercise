import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uso_gestion_estados/providers/heroes_info.dart';
import 'package:uso_gestion_estados/source/pages/next_page.dart';
import 'package:uso_gestion_estados/source/pages/widgets/super_floatingaction.dart';
import 'package:uso_gestion_estados/source/pages/widgets/super_text.dart';
  
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final _heroes=Provider.of<HeroesInfo>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(_heroes.heroe), 
      ), 
      body: Center(child: SuperText()),
      floatingActionButton: SuperFLoatingAction(  pagina: "nextPage", ),
    );
  }
}