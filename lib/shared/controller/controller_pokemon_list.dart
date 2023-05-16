import 'package:get/get.dart';
import 'package:pokemon_app/framework/local_storage.dart';
import 'package:pokemon_app/response/pokemon.dart';
import 'package:pokemon_app/response/pokemon_list.dart';

class ControllerPokemonList extends GetxController {
  var pokemonList = List<Pokemon>.empty().obs;

  @override
  void onInit() async {
    await setPokemonListData();
    super.onInit();
  }

  setPokemonListData() async {
    var data = await LocalStorage().getPokemonList();
    if (data != null) {
      pokemonList.value =
          (data as List).map((data) => Pokemon.fromMap(data)).toList();
    }
  }
}
