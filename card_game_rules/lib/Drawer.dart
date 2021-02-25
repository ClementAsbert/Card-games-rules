import 'package:flutter/material.dart';

class CardDrawer extends StatelessWidget {
  const CardDrawer();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Card Games Rules',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.filter_1),
            title: Text("Un joueur"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.filter_2),
            title: Text("Deux joueur"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.filter_3),
            title: Text("Trois joueur"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.filter_4),
            title: Text("Quatre joueur"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
