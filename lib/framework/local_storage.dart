import 'package:get_storage/get_storage.dart';

const String CACHE_POKEMON_LIST = "pokemon_list";
const String CACHE_POKEMON_DETAILS = "pokemon_details";

class LocalStorage {
  final box = GetStorage();

  Future setPokemonList({String? pokemonList}) async {
    pokemonList ??= "";
    await box.write(CACHE_POKEMON_LIST, pokemonList);
  }

  Future getPokemonList() async {
    return box.read(CACHE_POKEMON_LIST);
  }

  Future setPokemonDetails({String? pokemonDetails}) async {
    pokemonDetails ??= "";
    await box.write(CACHE_POKEMON_DETAILS, pokemonDetails);
  }

  Future getPokemonDetails() async {
    return box.read(CACHE_POKEMON_DETAILS);
  }
}
