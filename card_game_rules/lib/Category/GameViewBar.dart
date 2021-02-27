import 'package:card_game_rules/models/Card_model.dart';
import 'package:flutter/material.dart';

class GameViewBar extends StatelessWidget {
  final CardModel card;

  GameViewBar({this.card});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/playing-cards-1201257_1920.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black12,
            padding: EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 10,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 30,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      card.name,
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
