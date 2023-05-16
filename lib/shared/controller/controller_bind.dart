import 'package:get/get.dart';
import 'package:pokemon_app/features/splash/controller_splash.dart';
import 'package:pokemon_app/shared/controller/controller_pokemon_details.dart';
import 'package:pokemon_app/shared/controller/controller_pokemon_list.dart';

class ControllerBind implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ControllerSplash());
    Get.put(ControllerPokemonList());
    // Get.put(ControllerPokemonDetails());
  }
}
