import 'package:pokemon_app/framework/api.dart';

class ApiHome {
  Future<dynamic> getPokemonList() async {
    var r = await Api().apiJsonGet('pokemon');

    return r;
  }

  Future<dynamic> getPokemonDetails({required String url}) async {
    var r = await Api().apiJsonGetDetail(url);

    return r;
  }
}
