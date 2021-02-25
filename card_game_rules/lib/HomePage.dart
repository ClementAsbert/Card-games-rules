import 'package:card_game_rules/Information_Card.dart';
import 'package:card_game_rules/Titre_Section+Button.dart';
import 'package:flutter/material.dart';

import 'Drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
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
                SectionTitleAndButton(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.sort),
            label: "catégorie",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Rechercher",
          ),
        ],
      ),
    );
  }
}
