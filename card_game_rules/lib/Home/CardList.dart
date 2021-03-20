import 'package:card_game_rules/models/Card_model.dart';
import 'package:flutter/material.dart';

class CardListHome extends StatelessWidget {
  final CardModel card;
  CardListHome({this.card});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red,
      child: Stack(
        children: [
          Center(
            child: Text(card.name),
          )
        ],
      ),
    );
  }
}
