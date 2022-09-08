import 'package:eslamy/provider/my_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShowThemeBottomSheet extends StatefulWidget {
  @override
  State<ShowThemeBottomSheet> createState() => _ShowThemeBottomSheetState();
}

class _ShowThemeBottomSheetState extends State<ShowThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProviderApp>(context);
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          InkWell(
              onTap: (() {
                pro.changeTheme(ThemeMode.light);
                Navigator.pop(context);
              }),
              child: showThemeSelected(
                  'Light', pro.themeMode == ThemeMode.light ? true : false)),
          SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: (() {
                pro.changeTheme(ThemeMode.dark);
                Navigator.pop(context);
              }),
              child: showThemeSelected(
                  'Dark', pro.themeMode == ThemeMode.dark ? true : false))
        ],
      ),
    );
  }

  Widget showThemeSelected(String text, bool selected) {
    if (selected) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$text',
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: Theme.of(context).primaryColorDark),
          ),
          Icon(
            Icons.check,
            color: Theme.of(context).primaryColorDark,
          )
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$text', style: Theme.of(context).textTheme.bodyText1),
          Icon(Icons.check)
        ],
      );
    }
  }
}
