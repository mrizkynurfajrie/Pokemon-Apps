// To parse this JSON data, do
//
//     final pokemonResults = pokemonResultsFromJson(jsonString);

import 'dart:convert';

List<PokemonResults> pokemonResultsFromJson(String str) => List<PokemonResults>.from(json.decode(str).map((x) => PokemonResults.fromJson(x)));

String pokemonResultsToJson(List<PokemonResults> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PokemonResults {
    String? name;
    String? url;

    PokemonResults({
        this.name,
        this.url,
    });

    factory PokemonResults.fromJson(Map<String, dynamic> json) => PokemonResults(
        name: json["name"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
    };
}
