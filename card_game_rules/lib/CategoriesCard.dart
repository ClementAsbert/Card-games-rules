import 'package:card_game_rules/All_game.dart';
import 'package:card_game_rules/models/Card_model.dart';
import 'package:flutter/material.dart';

class CategoriesCard extends StatefulWidget {
  final CardModel card;

  CategoriesCard({this.card});

  @override
  _CategoriesCardState createState() => _CategoriesCardState();
}

class _CategoriesCardState extends State<CategoriesCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Colors.white,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Ink.image(
            image: AssetImage('assets/images/playing-cards-1201257_1920.jpg'),
            fit: BoxFit.cover,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, AllListCards.routeName,
                    arguments: widget.card);
              },
            ),
          ),
          Center(
            child: Text(
              widget.card.categorie,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
