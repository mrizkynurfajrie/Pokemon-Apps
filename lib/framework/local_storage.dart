import 'package:get_storage/get_storage.dart';

const String CACHE_POKEMON_LIST = "pokemon_list";
const String CACHE_POKEMON_DETAILS = "pokemon_details";
const String CACHE_POKEMONS = "pokemons";

class LocalStorage {
  final box = GetStorage();

  Future setPokemonList({dynamic pokemonList}) async {
    pokemonList ??= "";
    await box.write(CACHE_POKEMON_LIST, pokemonList);
  }

  Future getPokemonList() async {
    return box.read(CACHE_POKEMON_LIST);
  }

  Future setPokemonDetails({dynamic pokemonDetails}) async {
    pokemonDetails ??= "";
    await box.write(CACHE_POKEMON_DETAILS, pokemonDetails);
  }

  Future getPokemonDetails() async {
    return box.read(CACHE_POKEMON_DETAILS);
  }

  Future setPokemons({dynamic pokemons}) async {
    pokemons ??= "";
    await box.write(CACHE_POKEMONS, pokemons);
  }

  Future getPokemons() async {
    return box.read(CACHE_POKEMONS);
  }
}
