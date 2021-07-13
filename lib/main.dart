import 'package:flutter/material.dart';
import 'package:got_api/src/details.dart';
import 'package:got_api/src/menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData.dark(),

debugShowCheckedModeBanner: false,
title:"Examen API",
initialRoute: "/menu",
routes: {
  "/menu":(_)=>HomePage(),
  "/details":(_)=>Details()
},
    );
  }
  
}