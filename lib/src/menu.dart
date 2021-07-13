import 'package:flutter/material.dart';
import 'package:got_api/models/character.dart';
import 'package:got_api/providers/estado.dart';
import 'package:got_api/providers/provider.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget{
  final  _characterProvider= CharacterProvider();
@override 
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(title:  Text("Characters",),),

    body: Stack(children: [_Background(), FutureBuilder(
       

      future:_characterProvider.obtener(),
      builder: (BuildContext context, AsyncSnapshot<List<Character>>snapShot){
      final character= snapShot.data;
      if(snapShot.hasData){
  return ListView.builder(
    itemCount: character!.length ,
  itemBuilder: (BuildContext context,int i){
    final personajes = character[i];
    return _Cuerpo(personajes);
  }
  
  );

      }else{
      return  Center(child: CircularProgressIndicator());
      }
            }
  )] ) );
}
}
class  _Cuerpo extends StatelessWidget {
 final Character personajes;
 _Cuerpo(this.personajes);
  @override 
  Widget build(BuildContext context){
    return ListTile(
      onTap: ()=>Navigator.pushNamed(context, "/details",arguments: personajes),
      title: Text(personajes.name! ),
      subtitle: Text(personajes.level!),
      leading: Image.network(personajes.img!,),
    );
  
  }
  
}
class _Background extends StatelessWidget{
  @override 
Widget build(BuildContext context){
  return Stack(children: [
    Positioned(
      bottom:65,
      child:Opacity(opacity: 0.1,
      child: Image.network("https://static.wikia.nocookie.net/digimon/images/2/23/Digimonadventure_reboot_poster_%281%29.jpg/revision/latest?cb=20200420192938&path-prefix=es"),)
    )
  ],);
}
} 