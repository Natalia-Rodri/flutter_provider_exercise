import 'package:flutter/material.dart';

class SuperText extends StatelessWidget {
  const SuperText({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Contenido super text")
      ],
    );
  }
}