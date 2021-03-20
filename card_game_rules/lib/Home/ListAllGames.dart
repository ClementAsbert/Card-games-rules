import 'package:card_game_rules/Home/CardList.dart';
import 'package:card_game_rules/models/Card_model.dart';
import 'package:flutter/material.dart';

class ListAllGamesHome extends StatelessWidget {
  final List<CardModel> card;
  ListAllGamesHome({this.card});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 5),
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 4,
          children: [],
        ),
      ),
    );
  }
}
