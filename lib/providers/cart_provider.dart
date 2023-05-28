import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_pokemon_app/model/pokemons_model.dart';

final cartProvider = StateNotifierProvider< CartNotifier, List<PokemonModel> >(
  (ref) => CartNotifier(),
);

class CartNotifier extends StateNotifier<List<PokemonModel>> {
  CartNotifier() : super([]);

  void addCart(PokemonModel item) {
    state = [...state, item];
  }
}
