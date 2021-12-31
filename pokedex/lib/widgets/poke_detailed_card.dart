import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/constants.dart';
import 'package:pokedex/model/pokemon_model.dart';
import 'package:pokedex/widgets/pokemon_information.dart';

class PokeDetailedCard extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeDetailedCard({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String pokemonImageUrl = 'assets/images/pokeball.png';
    return Stack(
      children: [
        //pokeball
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            pokemonImageUrl,
            height: Constants.calculateDetailedPokeImgAndBallSize(),
            width: Constants.calculateDetailedPokeImgAndBallSize(),
          ),
        ),
        //card
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Align(
              alignment: Alignment.topCenter,
              child: PokemonInformationCard(
                pokemon: pokemon,
              ),
            ),
          ),
        ),
        //poke img
        Align(
          alignment: Alignment.bottomCenter,
          child: Hero(
            tag: pokemon.id!,
            child: CachedNetworkImage(
              imageUrl: pokemon.img ?? '',
              height: Constants.calculateDetailedPokeImgAndBallSize(),
              width: Constants.calculateDetailedPokeImgAndBallSize(),
              placeholder: (context, url) => const CircularProgressIndicator(),
            ),
          ),
        )
      ],
    );
  }
}
