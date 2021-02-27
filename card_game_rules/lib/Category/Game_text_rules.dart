import 'package:card_game_rules/models/Card_model.dart';
import 'package:flutter/material.dart';

class GameTextRules extends StatelessWidget {
  final CardModel card;

  GameTextRules({this.card});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(top: 10, bottom: 15, right: 18, left: 18),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Text(
                  'Règle du Jeux',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).accentColor,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  card.rule,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
