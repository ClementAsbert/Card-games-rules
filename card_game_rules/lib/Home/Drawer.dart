import 'package:flutter/material.dart';

import '../Categories.dart';

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
            leading: Icon(Icons.home),
            title: Text('Acceuil'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            leading: Icon(Icons.sort),
            title: Text('Catégories'),
            onTap: () {
              Navigator.pushNamed(context, ListCategoris.routeName);
            },
          ),
        ],
      ),
    );
  }
}
