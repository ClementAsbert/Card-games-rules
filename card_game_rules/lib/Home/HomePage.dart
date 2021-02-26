import 'package:card_game_rules/Home/Titre_Section+Button.dart';
import 'package:card_game_rules/Categories.dart';
import 'package:flutter/material.dart';

import 'Drawer.dart';
import 'Information_Card.dart';
import 'List_jeux_home.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 1;
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  void switchIndex(newIndex) {
    setState(() {
      index = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: switchIndex,
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
