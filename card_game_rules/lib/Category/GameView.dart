import 'package:card_game_rules/Category/GameViewBar.dart';
import 'package:card_game_rules/Category/Game_text_rules.dart';
import 'package:card_game_rules/models/Card_model.dart';
import 'package:flutter/material.dart';

class GameView extends StatefulWidget {
  static const String routeName = '/GameView';
  final CardModel card;

  GameView({this.card});

  @override
  _GameViewState createState() => _GameViewState();
}

class _GameViewState extends State<GameView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            GameViewBar(
              card: widget.card,
            ),
            GameTextRules(
              card: widget.card,
            )
          ],
        ),
      ),
    );
  }
}
