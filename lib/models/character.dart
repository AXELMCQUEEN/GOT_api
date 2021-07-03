class Characters{
String ? sentence;
String ? character;
String ? name;
String? slug;
String ? house;

Characters({
this.sentence,
this.character,
this.name,
this.slug,
this.house,

});

factory Characters.instancia(Map<String,dynamic> datos){
  return Characters(
    sentence: datos[ "sentence"] ,
    character: datos ['character']['name']['slug'] ,
    house: datos ['house']['name']['slug'],

  
    );
}

}