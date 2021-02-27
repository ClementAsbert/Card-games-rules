import 'package:card_game_rules/Category/List_game_per_category.dart';
import 'package:card_game_rules/models/Card_model.dart';
import 'package:flutter/material.dart';

class AllListCards extends StatelessWidget {
  static const String routeName = '/AllListCards';
  final List<CardModel> cards;
  final CardModel card;

  AllListCards({this.cards, this.card});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(card.categorie),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          children: cards
              .map((e) => ListGame(
                    card: e,
                  ))
              .where((element) => element.card.categorie == card.categorie)
              .toList(),
        ));
  }
}
