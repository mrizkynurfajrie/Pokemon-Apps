import 'package:get/get.dart';
import 'package:pokemon_app/framework/local_storage.dart';
import 'package:pokemon_app/response/pokemon_list.dart';

class ControllerPokemonList extends GetxController {
  @override
  void onInit() async {
    await setPokemonListData();
    super.onInit();
  }

  var pokemonList = List<PokemonList>.empty().obs;

  setPokemonListData() async {
    var data = await LocalStorage().getPokemonList();
    if (data != null) {
      pokemonList.value =
          (data as List).map((data) => PokemonList.fromMap(data)).toList();
    }
  }
}
