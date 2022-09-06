import 'package:flutter/material.dart';

import '../my_theme.dart';

class Hadeth extends StatelessWidget {
  List<String> ahadeth = ['الحد'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset('assets/images/hadethpic.png')),
        Divider(color: Theme
            .of(context)
            .primaryColor, thickness: 2,),
        Text('Ahadeth', style: Theme
            .of(context)
            .textTheme
            .headline2,),
        Divider(color: Theme
            .of(context)
            .primaryColor, thickness: 2,),
        ListView.separated(separatorBuilder: (_, index) {
          return Container(
            height: 1,
            margin: EdgeInsets.symmetric(horizontal: 50),
            color: MyThemeData.primaryColor,
          );
        },
          itemBuilder:,
          itemCount:,)

      ],
    );
  }
}
