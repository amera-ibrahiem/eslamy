import 'package:eslamy/provider/my_provider.dart';
import 'package:eslamy/tabs/setting/show_bottom_sheet_language.dart';
import 'package:eslamy/tabs/setting/show_theme_sheet_language.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Settings extends StatefulWidget {
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProviderApp>(context);
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Languge',
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: (() {
              ShowBottomSheetLanguage();
            }),
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    border: Border.all(color: Theme.of(context).primaryColor)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(
                    provider.AppLanguage == 'en' ? 'English' : 'العربية',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                )),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Theme',
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: (() {
              ShowBottomSheetTheme();
            }),
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    border: Border.all(color: Theme.of(context).primaryColor)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(
                    provider.themeMode == ThemeMode.light ? 'Light' : 'Dark',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                )),
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }

  void ShowBottomSheetLanguage() {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return ShowLanguageBottomSheet();
        });
  }

  void ShowBottomSheetTheme() {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return ShowThemeBottomSheet();
        });
  }
}
