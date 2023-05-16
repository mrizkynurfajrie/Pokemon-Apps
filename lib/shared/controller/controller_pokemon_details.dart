// import 'package:get/get.dart';
// import 'package:pokemon_app/framework/local_storage.dart';
// import 'package:pokemon_app/response/pokemon_details.dart';

// class ControllerPokemonDetails extends GetxController {
//   @override
//   void onInit() async {
//     await setPokemonDetailsData();
//     super.onInit();
//   }

//   var pokemonDetails = Pokemon().obs;

//   setPokemonDetailsData() async {
//     var data = await LocalStorage().getPokemonDetails();
//     if (data != null) {
//       pokemonDetails.value = PokemonDetails.fromJson(data);
//     }
//   }
// }
