import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catégories'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Card(
            color: Colors.white,
          ),
          Card(
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
