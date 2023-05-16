import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon_app/features/detail/api_detail.dart';
import 'package:pokemon_app/framework/local_storage.dart';
import 'package:pokemon_app/response/pokemon.dart';
import 'package:pokemon_app/shared/controller/controller_pokemon.dart';
import 'package:pokemon_app/shared/widgets/show_dialog.dart';

class ControllerDetail extends GetxController {
  final ApiDetail api;
  ControllerDetail({required this.api});

  var controllerPokemon = Get.find<ControllerPokemon>();
  var pokemon = Pokemon().obs;

  var loading = false.obs;
  var getId = 0.obs;

  @override
  void onInit() async {
    getId.value = Get.arguments;
    log('id : $getId');
    await getPokemon();
    super.onInit();
  }

  getPokemon() async {
    loading.value = true;
    try {
      var r = await api.getDetailPokemon(getId.value);
      if (r != null) {
        await LocalStorage().setPokemons(pokemons: r);
        var getDetailPokemon = await LocalStorage().getPokemons();
        log(getDetailPokemon.toString());
        controllerPokemon.pokemon.value = Pokemon.fromJson(r);
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
}
