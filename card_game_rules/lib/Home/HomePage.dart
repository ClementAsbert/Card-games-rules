import 'package:card_game_rules/Category/Categories.dart';
import 'package:card_game_rules/Home/ListAllGames.dart';
import 'package:card_game_rules/Home/ListFavorite.dart';
import 'package:card_game_rules/models/Card_model.dart';
import 'package:flutter/material.dart';

import 'Drawer.dart';

import '../data/data.dart' as data;

class HomePage extends StatefulWidget {
  final List<CardModel> cards = data.cards;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Home page"),
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 15,
          )
        ],
      ),
      drawer: CardDrawer(),
      body: Column(
        children: [
          ListFavoriteHome(),
          Divider(),
          ListAllGamesHome(),
        ],
      ),
    );
  }
}
