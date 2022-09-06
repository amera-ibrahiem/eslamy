import 'package:flutter/material.dart';

class SuraDetailsItem extends StatelessWidget {
  String SuraName;

  SuraDetailsItem(this.SuraName);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      SuraName,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline2,
    ));
  }
}
