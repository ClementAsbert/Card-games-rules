import 'package:card_game_rules/All_game.dart';
import 'package:card_game_rules/Categories.dart';
import 'package:card_game_rules/models/Card_model.dart';
import 'package:flutter/material.dart';
import './data/data.dart' as data;

import 'Home/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  final List<CardModel> cards = data.cards;
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.grey[850],
        accentColor: Colors.orangeAccent[400],
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) {
          return HomePage();
        }
      },
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case ListCategoris.routeName:
            {
              return MaterialPageRoute(
                builder: (context) {
                  return ListCategoris(
                    card: widget.cards,
                  );
                },
              );
            }
          case AllListCards.routeName:
            {
              return MaterialPageRoute(builder: (context) {
                final CardModel card = settings.arguments;
                return AllListCards(
                  cards: widget.cards,
                  card: card,
                );
              });
            }
        }
      },
    );
  }
}
