import 'package:get/get.dart';
import 'package:pokemon_app/framework/local_storage.dart';
import 'package:pokemon_app/response/pokemon.dart';

class ControllerPokemon extends GetxController {
  var pokemon = Pokemon().obs;

  @override
  void onInit() async {
    await setPokemonData();
    super.onInit();
  }

  setPokemonData() async {
    var data = await LocalStorage().getPokemons();
    if (data != null) {
      pokemon.value = Pokemon.fromJson(data);
    }
  }
}
