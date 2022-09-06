import 'package:eslamy/sura_details/sura_details_screen.dart';
import 'package:eslamy/tabs/hadeth/hadeth_details.dart';
import 'package:flutter/material.dart';

import 'homelayout.dart';
import 'my_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeLayout.routeName,
      routes: {
        HomeLayout.routeName: (_) => HomeLayout(),
        SuraDetailsScreen.routeName: (_) => SuraDetailsScreen(),
        HadethDetails.routeName: (_) => HadethDetails(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
    );
  }
}
