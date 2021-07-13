import 'package:got_api/providers/provider.dart';
import 'package:get/get.dart';
import 'package:got_api/models/character.dart';


class States extends GetxController{
  List<Character> characters = [];
final characterProvider = CharacterProvider();

Future<void> character() async {
    characters.addAll(await characterProvider.obtener());

    update();
  }


}
