import 'package:card_game_rules/Category/CategoriesCard.dart';
import 'package:card_game_rules/Home/Drawer.dart';
import 'package:card_game_rules/models/Card_model.dart';
import 'package:flutter/material.dart';

class ListCategoris extends StatelessWidget {
  static const String routeName = '/ListCard';
  final List<CardModel> card;
  ListCategoris({this.card});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catégories'),
      ),
      drawer: CardDrawer(),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        padding: EdgeInsets.all(15),
        children: card
            .map(
              (cards) => CategoriesCard(
                card: cards,
              ),
            )
            .toList(),
      ),
    );
  }
}
