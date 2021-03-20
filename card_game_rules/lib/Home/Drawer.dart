import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

import '../Category/Categories.dart';

class CardDrawer extends StatefulWidget {
  const CardDrawer();

  @override
  _CardDrawerState createState() => _CardDrawerState();
}

class _CardDrawerState extends State<CardDrawer> {
  bool darkMode = false;
  dynamic savedThemeMode;

  void initState() {
    super.initState();
    getCurrentTheme();
  }

  Future getCurrentTheme() async {
    savedThemeMode = await AdaptiveTheme.getThemeMode();
    if (savedThemeMode.toString() == 'AdaptiveThemeMode.dark') {
      print('dark');
      setState(() {
        darkMode = true;
      });
    } else {
      setState(() {
        darkMode = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
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
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favories'),
              onTap: () {},
            ),
            Expanded(
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SwitchListTile(
                    title: Text(
                      'Mode Sombre',
                      style: TextStyle(fontSize: 18),
                    ),
                    activeColor: Theme.of(context).accentColor,
                    secondary: Icon(Icons.nightlight_round),
                    value: darkMode,
                    onChanged: (bool value) {
                      if (value == true) {
                        AdaptiveTheme.of(context).setDark();
                      } else {
                        AdaptiveTheme.of(context).setLight();
                      }
                      setState(() {
                        darkMode = value;
                      });
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
