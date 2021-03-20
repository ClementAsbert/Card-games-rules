import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:card_game_rules/Category/All_game_per_category.dart';
import 'package:card_game_rules/Category/Categories.dart';
import 'package:card_game_rules/Category/GameView.dart';
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
    return AdaptiveTheme(
      light: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.red,
        accentColor: Colors.red,
      ),
      dark: ThemeData(
        brightness: Brightness.dark,
        accentColor: Colors.red,
      ),
      initial: AdaptiveThemeMode.dark,
      builder: (theme, darkTheme) => MaterialApp(
        theme: theme,
        darkTheme: darkTheme,
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
                return MaterialPageRoute(
                  builder: (context) {
                    final CardModel card = settings.arguments;
                    return AllListCards(
                      cards: widget.cards,
                      card: card,
                    );
                  },
                );
              }
            case GameView.routeName:
              {
                return MaterialPageRoute(
                  builder: (context) {
                    final CardModel card = settings.arguments;
                    return GameView(
                      card: card,
                    );
                  },
                );
              }
          }
        },
      ),
    );
  }
}
