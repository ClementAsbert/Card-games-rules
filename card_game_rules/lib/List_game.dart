import 'package:card_game_rules/models/Card_model.dart';
import 'package:flutter/material.dart';

class ListGame extends StatefulWidget {
  final CardModel card;

  ListGame({this.card});

  @override
  _ListGameState createState() => _ListGameState();
}

class _ListGameState extends State<ListGame> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(widget.card.image),
      title: Text(widget.card.name),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}
