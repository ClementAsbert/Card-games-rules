import 'package:flutter/material.dart';

class InformationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      margin: EdgeInsets.all(10),
      child: SizedBox(
        height: 200,
        child: Row(
          children: [
            Expanded(
              child: Text(
                "Information",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30, color: Theme.of(context).accentColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
