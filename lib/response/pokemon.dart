// To parse this JSON data, do
//
//     final pokemon = pokemonFromJson(jsonString);

import 'dart:convert';

Pokemon pokemonFromJson(String str) => Pokemon.fromJson(json.decode(str));

String pokemonToJson(Pokemon data) => json.encode(data.toJson());

class Pokemon {
    int? id;
    int? height;
    String? name;
    List<StatElement>? stats;
    List<Type>? types;
    int? weight;

    Pokemon({
        this.id,
        this.height,
        this.name,
        this.stats,
        this.types,
        this.weight,
    });

    factory Pokemon.fromJson(Map<String, dynamic> json) => Pokemon(
        id: json["id"],
        height: json["height"],
        name: json["name"],
        stats: json["stats"] == null ? [] : List<StatElement>.from(json["stats"]!.map((x) => StatElement.fromJson(x))),
        types: json["types"] == null ? [] : List<Type>.from(json["types"]!.map((x) => Type.fromJson(x))),
        weight: json["weight"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "height": height,
        "name": name,
        "stats": stats == null ? [] : List<dynamic>.from(stats!.map((x) => x.toJson())),
        "types": types == null ? [] : List<dynamic>.from(types!.map((x) => x.toJson())),
        "weight": weight,
    };
}

class StatElement {
    int? baseStat;
    int? effort;
    TypeClass? stat;

    StatElement({
        this.baseStat,
        this.effort,
        this.stat,
    });

    factory StatElement.fromJson(Map<String, dynamic> json) => StatElement(
        baseStat: json["base_stat"],
        effort: json["effort"],
        stat: json["stat"] == null ? null : TypeClass.fromJson(json["stat"]),
    );

    Map<String, dynamic> toJson() => {
        "base_stat": baseStat,
        "effort": effort,
        "stat": stat?.toJson(),
    };
}

class TypeClass {
    String? name;
    String? url;

    TypeClass({
        this.name,
        this.url,
    });

    factory TypeClass.fromJson(Map<String, dynamic> json) => TypeClass(
        name: json["name"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
    };
}

class Type {
    int? slot;
    TypeClass? type;

    Type({
        this.slot,
        this.type,
    });

    factory Type.fromJson(Map<String, dynamic> json) => Type(
        slot: json["slot"],
        type: json["type"] == null ? null : TypeClass.fromJson(json["type"]),
    );

    Map<String, dynamic> toJson() => {
        "slot": slot,
        "type": type?.toJson(),
    };
}
