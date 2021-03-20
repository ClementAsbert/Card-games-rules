import 'package:card_game_rules/Home/CardFavorite.dart';
import 'package:flutter/material.dart';

class ListFavoriteHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CardFavoriteHome(),
          CardFavoriteHome(),
          CardFavoriteHome(),
          CardFavoriteHome(),
          CardFavoriteHome(),
          CardFavoriteHome(),
        ],
      ),
    );
  }
}
