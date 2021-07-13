import 'package:flutter/material.dart';
import 'package:got_api/models/character.dart';

class Details extends StatelessWidget {
  @override 
  Widget build(BuildContext context){
    Character personajes = ModalRoute.of(context)!.settings.arguments as Character;
    return Scaffold(
body: Center(
child: Image.network(personajes.img!)
),
    );

  }
  
}