import 'package:card_game_rules/Home/Titre_Section+Button.dart';
import 'package:card_game_rules/Category/Categories.dart';
import 'package:card_game_rules/models/Card_model.dart';
import 'package:flutter/material.dart';

import 'Drawer.dart';
import 'Information_Card.dart';
import 'List_jeux_home.dart';
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
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                InformationCard(),
                Divider(
                  indent: 20,
                  endIndent: 20,
                ),
                SectionTitleAndButton(
                  titreSection: 'Ajouter récement',
                ),
                ListJeuxHome(),
                Divider(
                  indent: 20,
                  endIndent: 20,
                ),
                SectionTitleAndButton(
                  titreSection: 'Les plus connues',
                ),
                ListJeuxHome(),
                Divider(
                  indent: 20,
                  endIndent: 20,
                ),
                SectionTitleAndButton(
                  titreSection: 'Recomander',
                ),
                ListJeuxHome(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
