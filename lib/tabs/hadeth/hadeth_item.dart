import 'package:eslamy/tabs/hadeth/hadeth.dart';
import 'package:flutter/material.dart';

class HadethItems extends StatelessWidget {
  AhadethModel ahadethModel;

  HadethItems(this.ahadethModel);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.pushNamed(context, SuraDetailsScreen.routeName,
        //     arguments: SuraDetailsModel(name, index));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          '${ahadethModel.title}',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    );
    ;
  }
}
