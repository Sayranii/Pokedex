// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/constants.dart';

class AppTitle extends StatelessWidget {
  AppTitle({Key? key}) : super(key: key);

  String pokemonImageUrl = 'assets/images/pokeball.png';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Constants.getAppTitleWidgetHeigh(),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(8.w),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Pokedex',
                  style: Constants.getTitleStyle(),
                )),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              pokemonImageUrl,
              width: Constants.getAppTitlePokeballHeigh(),
              fit: BoxFit.fitWidth,
            ),
          )
        ],
      ),
    );
  }
}
