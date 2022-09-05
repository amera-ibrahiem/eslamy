import 'package:flutter/material.dart';

class QuranItems extends StatelessWidget {
  String name;

  QuranItems(this.name);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        '$name',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline2,
      ),
    );
    ;
  }
}
