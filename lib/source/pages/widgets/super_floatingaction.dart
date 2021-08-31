import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uso_gestion_estados/providers/heroes_info.dart';
import 'package:uso_gestion_estados/source/pages/next_page.dart'; 

class SuperFLoatingAction  extends StatelessWidget {
  final String pagina;
  const SuperFLoatingAction ({ Key? key, required this.pagina }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final heroesInfo = Provider.of<HeroesInfo>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          child: Icon(Icons.access_time),
          backgroundColor: Colors.red,
          heroTag: "btn1",
          onPressed: () {
            heroesInfo.heroe = "Iron Man";
          } ),
        SizedBox(height: 10.0),
        FloatingActionButton(
          child: Icon(Icons.ac_unit),
          backgroundColor: Colors.blue,
          heroTag: "btn2",
          onPressed: () {
            heroesInfo.heroe = "Capitán América";
          } ),
        SizedBox(height: 10.0),
        FloatingActionButton(
          child: Icon(Icons.next_plan),
          backgroundColor: Colors.green,
          heroTag: "btn3",
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(pagina);
          } )
      ],
    );
  }
}