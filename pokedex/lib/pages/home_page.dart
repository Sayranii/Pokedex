import 'package:flutter/material.dart';
import 'package:pokedex/widgets/app_title.dart';
import 'package:pokedex/widgets/pokemon_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        //Ekran döndürüldüğünde builderı tekrardan çalıştırır
        builder: (context, orientation) => Column(
          children: [
            AppTitle(),
            // ignore: prefer_const_constructors
            Expanded(child: PokemonList()),
          ],
        ),
      ),
    );
  }
}
