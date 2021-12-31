import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/model/pokemon_model.dart';

class PokemonInformationCard extends StatelessWidget {
  final PokemonModel pokemon;
  const PokemonInformationCard({Key? key, required this.pokemon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.w)),
          color: Colors.white),
      child: Column(
        children: [
          _information('Name', pokemon),
          _information('Height', pokemon),
          _information('Weight', pokemon),
          _information('Spawn Time', pokemon),
          _information('Weakness', pokemon),
          _information('Pre Evolutions', pokemon),
          _information('Next Evolutions', pokemon),
        ],
      ),
    );
  }

  Widget _information(String title, PokemonModel pokemon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.h),
          ),
          Text(_findStats(title, pokemon), style: TextStyle(fontSize: 16.h)),
        ],
      ),
    );
  }

  String _findStats(String title, PokemonModel pokemon) {
    switch (title) {
      case 'Name':
        return pokemon.name?.toString() ?? 'Not Available';

      case 'Height':
        return pokemon.height?.toString() ?? 'Not Available';

      case 'Weight':
        return pokemon.weight?.toString() ?? 'Not Available';

      case 'Spawn Time':
        return pokemon.spawnTime?.toString() ?? 'Not Available';

      case 'Weakness':
        return pokemon.weaknesses?.join(' , ') ?? 'Not Available';

      case 'Pre Evolutions':
        return pokemon.prevEvolution?.join(' , ') ?? 'Not Available';

      case 'Next Evolutions':
        return pokemon.nextEvolution?.join(' , ') ?? 'Not Available';
    }

    return '';
  }
}
