import 'package:dio/dio.dart';
import 'package:got_api/models/character.dart';

class CharacterProvider{
final _url ='https://digimon-api.vercel.app/api/digimon';
final _http =Dio();


Future<List<Character>>obtener()async{
final response = await _http.get(_url);
List<Character>  personajes = [];
 List<dynamic> datos = response.data;



for (int i = 0; i < datos.length; i++) {

final name = await datos[i]['name'];
final level = await datos[i]['level'];
final img = await datos[i]['img'];

 //print(name); 

  personajes.add(Character(name: name, level: level, img: img));
  }
 // print(personajes[1]); 
return personajes;


}
}