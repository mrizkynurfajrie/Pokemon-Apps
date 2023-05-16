class PokemonList {
  String? name;
  String? url;

  PokemonList({
    this.name,
    this.url,
  });

  PokemonList copyWith({
    String? name,
    String? url,
  }) {
    return PokemonList(
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }

  factory PokemonList.fromMap(Map<String, dynamic> map) {
    return PokemonList(
      name: map['name'] as String,
      url: map['url'] as String,
    );
  }
}
