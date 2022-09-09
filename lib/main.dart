import 'package:eslamy/provider/my_provider.dart';
import 'package:eslamy/sura_details/sura_details_screen.dart';
import 'package:eslamy/tabs/hadeth/hadeth_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'homelayout.dart';
import 'my_theme.dart';
import 'provider/my_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (_) {
        return MyProviderApp();
      },
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  late MyProviderApp provider;

  @override
  Widget build(BuildContext context) {
    provider = Provider.of<MyProviderApp>(context);
    initSharedPreference();
    return MaterialApp(
      title: 'Localizations Sample App',
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English, no country code
        Locale('ar'), // Spanish, no country code
      ],
      locale: Locale(provider.AppLanguage),
      debugShowCheckedModeBanner: false,
      initialRoute: HomeLayout.routeName,
      routes: {
        HomeLayout.routeName: (_) => HomeLayout(),
        SuraDetailsScreen.routeName: (_) => SuraDetailsScreen(),
        HadethDetails.routeName: (_) => HadethDetails(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: provider.themeMode,
    );
  }

  void initSharedPreference() async {
    final prefs = await SharedPreferences.getInstance();
    // if(prefs.getString('language')=='ar'){
    //   provider.changeLanguage('ar');
    // }
    // else{
    //   provider.changeLanguage('en');
    // }
    String lang = prefs.getString('language') ?? 'en';
    provider.changeLanguage('lang');
    if (prefs.getString('Theme') == 'dark') {
      provider.changeTheme(ThemeMode.dark);
    } else {
      provider.changeTheme(ThemeMode.light);
    }
  }
}
