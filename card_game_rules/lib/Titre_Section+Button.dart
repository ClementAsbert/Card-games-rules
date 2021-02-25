import 'package:flutter/material.dart';

class SectionTitleAndButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Ajouter récement',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              'Tout voir',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            textColor: Theme.of(context).accentColor,
          )
        ],
      ),
    );
  }
}
