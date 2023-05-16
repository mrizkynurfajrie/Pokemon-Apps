class PokemonResults {
  String name;
  String url;

  PokemonResults({
    required this.name,
    required this.url,
  });

  PokemonResults copyWith({
    String? name,
    String? url,
  }) {
    return PokemonResults(
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }

  factory PokemonResults.fromMap(Map<String, dynamic> map) {
    return PokemonResults(
      name: map['name'] as String,
      url: map['url'] as String,
    );
  }

}