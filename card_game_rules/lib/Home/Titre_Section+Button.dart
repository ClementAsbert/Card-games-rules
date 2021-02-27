import 'package:card_game_rules/Category/All_game_per_category.dart';
import 'package:card_game_rules/Category/Categories.dart';
import 'package:card_game_rules/models/Card_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SectionTitleAndButton extends StatelessWidget {
  final CardModel card;
  final String titreSection;

  SectionTitleAndButton({this.titreSection, this.card});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Expanded(
            child: Text(
              this.titreSection,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              'Tout voir',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            textColor: Theme.of(context).accentColor,
          )
        ],
      ),
    );
  }
}
