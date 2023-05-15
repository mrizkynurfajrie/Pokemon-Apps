import 'package:get/get.dart';
import 'package:pokemon_app/framework/local_storage.dart';
import 'package:pokemon_app/response/pokemon_results.dart';

class ControllerPokemonList extends GetxController {
  var pokemonList = PokemonResults().obs;

  @override
  void onInit() async {
    await setPokemonListData();
    super.onInit();
  }

  setPokemonListData() async {
    var data = await LocalStorage().getPokemonList();
    if (data != null) {
      pokemonList.value = PokemonResults.fromJson(data);
    }
  }
}
