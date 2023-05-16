import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon_app/features/home/api_home.dart';
import 'package:pokemon_app/framework/local_storage.dart';
import 'package:pokemon_app/response/pokemons.dart';
import 'package:pokemon_app/response/pokemon_list.dart';
import 'package:pokemon_app/shared/controller/controller_pokemon_details.dart';
import 'package:pokemon_app/shared/widgets/show_dialog.dart';

class ControllerHome extends GetxController {
  final ApiHome api;
  ControllerHome({
    required this.api,
  });

  var loading = false.obs;
  var controllerPokemonList = Get.find<ControllerPokemonList>();
  var listPokemon = List.empty().obs;
  var pokemons = List<Pokemons>.empty().obs;

  @override
  void onInit() async {
    await getPokemonList();
    super.onInit();
  }

  getPokemonList() async {
    loading.value = true;
    try {
      var r = await api.getPokemonList();
      log('api results : $r');
      if (r != null) {
        var data = r["results"];
        await LocalStorage().setPokemonList(pokemonList: data);
        var getList = await LocalStorage().getPokemonList();
        log(getList.toString());
        var pokemons = List.from(data)
            .map((pokemonResults) => PokemonList.fromMap(pokemonResults))
            .toList();
        controllerPokemonList.pokemonList.value = pokemons;
        for (var result in controllerPokemonList.pokemonList) {
          getPokemonDetails(result.url!);
        }
      } else {
        showPopUp(
          title: 'Something went wrong!',
          description: "Can't fetch data or loss internet connection",
          imageUri: Icons.error,
        );
      }
      loading.value = false;
    } catch (e) {
      loading.value = false;
      log(e.toString());
      showPopUp(
        title: 'Error',
        description: e.toString(),
        imageUri: Icons.error,
      );
    }
  }

  getPokemonDetails(String url) async {
    try {
      var r = await api.getPokemonDetails(url: url);
      log("data details : $r");
      if (r != null) {
        var data = r;
        var pokemon = Pokemons.fromMap(data);
        if (pokemons.isEmpty) {
          listPokemon.add(pokemon);
          listPokemon.sort((a, b) => a.id.compareTo(b.id));
        }
      }
    } catch (e) {
      log(e.toString());
      showPopUp(
        title: 'Error',
        description: e.toString(),
        imageUri: Icons.error,
      );
    }
  }
}
