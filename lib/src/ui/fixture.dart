import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Fixture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
    child: Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("Fixture"),
              
            ],
          )
        ],
      ),
    ),
  );
  }
}
