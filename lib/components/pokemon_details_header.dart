import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pokedex_pokemon_app/styles/app_styles.dart';

class PokemonDetailsHeader extends StatelessWidget {
  const PokemonDetailsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //left image
        Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                'images/vector.png',
                scale: 5,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 20, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              //name and details of pokemon
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Bulbasaur',
                    style: AppStyles.headline1,
                  ),
                  20.height,
                  Text(
                    'Grass, Poison',
                    style: AppStyles.tabBarText
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                  50.height,
                  Text(
                    '#001',
                    style: AppStyles.tabBarText
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const Spacer(),
              Image.asset(
                'images/pokemon.png',
                scale: 4,
              ),
            ],
          ),
        )
      ],
    );
  }
}
