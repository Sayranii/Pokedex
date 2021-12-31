import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/model/pokemon_model.dart';

class Constants {
  Constants._();

  static ThemeData darkTheme =
      ThemeData.dark().copyWith(textTheme: GoogleFonts.latoTextTheme());

  static TextStyle getTitleStyle() {
    return const TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 48);
  }

  static TextStyle getPokemonNameTextStyle(PokemonModel pokemon) {
    return TextStyle(
        color: pokemon.type![0] == 'Electric' ? Colors.black : Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 18);
  }

  static double getAppTitleWidgetHeigh() {
    return ScreenUtil().orientation == Orientation.portrait ? 0.15.sh : 0.15.sw;
  }

  static double getAppTitlePokeballHeigh() {
    return ScreenUtil().orientation == Orientation.portrait ? 0.2.sh : 0.2.sw;
  }

  static double calculatePokeImgAndBallSize() {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return 0.2.sw;
    }
    return 0.3.sh;
  }

  static double calculateDetailedPokeImgAndBallSize() {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return 0.15.sh;
    }
    return 0.2.sw;
  }

  static final Map<String, Color> _typeColorMap = {
    'Grass': Colors.green,
    'Fire': Colors.redAccent,
    'Water': Colors.blue,
    'Electric': Colors.yellow.shade600,
    'Rock': Colors.grey,
    'Ground': Colors.brown,
    'Bug': Colors.lightGreenAccent.shade700,
    'Psychic': Colors.indigo,
    'Fighting': Colors.orange,
    'Ghost': Colors.deepPurple,
    'Normal': Colors.black26,
    'Poison': Colors.deepPurpleAccent
  };

  static Color getColorFromType(String type) {
    if (_typeColorMap.containsKey(type)) {
      return _typeColorMap[type] ?? Colors.pink.shade300;
    } else {
      return Colors.pink.shade300;
    }
  }
}
