import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pokedex_pokemon_app/model/pokemons_model.dart';
import 'package:pokedex_pokemon_app/providers/cart_provider.dart';
import 'package:pokedex_pokemon_app/styles/app_styles.dart';

class AllComponentScreen extends ConsumerWidget {
  AllComponentScreen({super.key});

  List<PokemonModel> getItems = getPokemonModel();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addItem = ref.watch(cartProvider);
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: GridView.builder(
          itemCount: getItems.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 220,
            crossAxisSpacing: 1,
            crossAxisCount: 3,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // var cart = PokemonModel(
                //     img: getItems[index].img,
                //     id: getItems[index].id,
                //     title: getItems[index].title,
                //     type: getItems[index].type);
                // ref.read(cartProvider).addCart(cart);
                // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                //     duration: Duration(milliseconds: 900),
                //     content: Text('Your Pokemon has been added to favorites')));
              },
              child: Container(
                height: 200,
                width: 150,
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 120,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.green.shade100,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8)),
                      ),
                      child: Image.asset(getItems[index].img),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(getItems[index].id.toString()),
                          5.height,
                          Text(
                            getItems[index].title,
                            style: AppStyles.titleText,
                          ),
                          10.height,
                          Text(
                            getItems[index].title,
                            style: AppStyles.bodyText,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
