import 'package:pokemon_app/framework/api.dart';

class ApiDetail {
  Future<dynamic> getDetailPokemon(int id) async {
    var r = await Api().apiJsonGet('pokemon/$id');
    return r;
  }
}
