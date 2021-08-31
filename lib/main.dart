import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uso_gestion_estados/providers/heroes_info.dart';
import 'package:uso_gestion_estados/source/pages/home_page.dart';
import 'package:uso_gestion_estados/source/pages/next_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Siempre se pone el changeNotifierProvider en lo más alto de la aplicación.
    //final heroesInfo= Provider.of<HeroesInfo>(context);
    
    return ChangeNotifierProvider(
      create: (_) => HeroesInfo(),
      child: MaterialApp(
        title: "HOliwi",
        initialRoute: 'home',
        routes: {
          'home' : (context) => HomePage(), 
          'principal' : (context) => MyApp(),
          'nextPage' : (context) => NextPage(),
        },
      ),
    );
  }
}