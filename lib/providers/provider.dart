import 'package:dio/dio.dart';
import 'package:got_api/models/character.dart';

class CharacterProvider{
final _url ='https://game-of-thrones-quotes.herokuapp.com/v1/random/3';
final _http =Dio();


Future<List<Characters>>obtener()async{
final response = await _http.get(_url);
List<dynamic>  data = response.data;
return data.map((datos) => Characters.instancia(datos)).toList();
}
}