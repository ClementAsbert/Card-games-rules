import 'package:flutter/material.dart';

class ListJeuxHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 20, bottom: 10),
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 200,
            child: Column(
              children: [
                ListTile(
                  leading:
                      Image.asset('assets/images/playing-card-311679_640.png'),
                  title: Text("Jeux n°1"),
                  subtitle: Text('subtitle'),
                  onTap: () {},
                ),
                ListTile(
                  leading:
                      Image.asset('assets/images/playing-card-311679_640.png'),
                  title: Text('Jeux n°2'),
                  subtitle: Text('Subtitle'),
                  onTap: () {},
                ),
              ],
            ),
          ),
          Container(
            width: 200,
            child: Column(
              children: [
                ListTile(
                  leading:
                      Image.asset('assets/images/playing-card-311679_640.png'),
                  title: Text("Jeux n°1"),
                  subtitle: Text('subtitle'),
                  onTap: () {},
                ),
                ListTile(
                  leading:
                      Image.asset('assets/images/playing-card-311679_640.png'),
                  title: Text('Jeux n°2'),
                  subtitle: Text('Subtitle'),
                  onTap: () {},
                ),
              ],
            ),
          ),
          Container(
            width: 200,
            child: Column(
              children: [
                ListTile(
                  leading:
                      Image.asset('assets/images/playing-card-311679_640.png'),
                  title: Text("Jeux n°1"),
                  subtitle: Text('subtitle'),
                  onTap: () {},
                ),
                ListTile(
                  leading:
                      Image.asset('assets/images/playing-card-311679_640.png'),
                  title: Text('Jeux n°2'),
                  subtitle: Text('Subtitle'),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
