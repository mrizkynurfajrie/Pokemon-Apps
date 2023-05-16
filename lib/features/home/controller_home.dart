import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon_app/features/home/api_home.dart';
import 'package:pokemon_app/response/pokemon.dart';
import 'package:pokemon_app/response/pokemon_list.dart';
import 'package:pokemon_app/shared/controller/controller_pokemon_list.dart';
import 'package:pokemon_app/shared/widgets/show_dialog.dart';

class ControllerHome extends GetxController {
  final ApiHome api;
  ControllerHome({
    required this.api,
  });

  var loading = false.obs;
  var controllerPokemonList = Get.find<ControllerPokemonList>();
  // var controllerPokemonDetails = Get.find<ControllerPokemonDetails>();
  var listPokemon = List.empty().obs;
  var pokemons = List<Pokemon>.empty().obs;

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
        var pokemons = List.from(data)
            .map((pokemonResults) => PokemonResults.fromMap(pokemonResults))
            .toList();
        for (var result in pokemons) {
          getPokemonDetails(result.url);
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
        var pokemon = Pokemon.fromMap(data);
        if (pokemons.isEmpty) {
          listPokemon.add(pokemon);
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
