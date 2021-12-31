import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/constants/constants.dart';
import 'package:pokedex/model/pokemon_model.dart';

class PokeImgAndBall extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeImgAndBall({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String pokemonImageUrl = 'assets/images/pokeball.png';

    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            pokemonImageUrl,
            height: Constants.calculatePokeImgAndBallSize(),
            width: Constants.calculatePokeImgAndBallSize(),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Hero(
            tag: pokemon.id!,
            child: CachedNetworkImage(
              imageUrl: pokemon.img ?? '',
              height: Constants.calculatePokeImgAndBallSize(),
              width: Constants.calculatePokeImgAndBallSize(),
              placeholder: (context, url) => const CircularProgressIndicator(),
            ),
          ),
        )
      ],
    );
  }
}
