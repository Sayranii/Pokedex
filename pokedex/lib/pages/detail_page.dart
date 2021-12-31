import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/constants.dart';
import 'package:pokedex/model/pokemon_model.dart';
import 'package:pokedex/widgets/Poke_detailed_card.dart';
import 'package:pokedex/widgets/poke_type_name.dart';

class DetailPage extends StatelessWidget {
  final PokemonModel pokemon;
  const DetailPage({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.getColorFromType(pokemon.type![0]),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                  padding: const EdgeInsets.all(8),
                  iconSize: 24.h,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
            ),
            PokeNameType(pokemon: pokemon),
            PokeDetailedCard(pokemon: pokemon)
          ],
        )),
      ),
    );
  }
}
