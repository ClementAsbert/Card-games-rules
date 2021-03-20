import 'package:flutter/material.dart';

class CardFavoriteHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: Card(
        color: Colors.white,
        child: Center(
          child: Text(
            "NAME",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
