import 'package:eslamy/provider/my_provider.dart';
import 'package:eslamy/sura_details/sura_detail_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'sura-details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProviderApp>(context);
    var SuraDetailsArgs =
    ModalRoute
        .of(context)!
        .settings
        .arguments as SuraDetailsModel;
    if (verses.isEmpty) loadFile(SuraDetailsArgs.index);
    return Stack(
      children: [
        Image.asset(
          provider.getBackground(),
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              '${SuraDetailsArgs.name}',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          body: verses.length == 0
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
            itemBuilder: (_, index) {
              return SuraDetailsItem(verses[index].toString());
            },
            itemCount: verses.length,
          ),
        )
      ],
    );
  }

  void loadFile(int index) async {
    String content =
    await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = [];
    lines.add(content);
    print(lines);
    verses = lines;
    print(verses);
    setState(() {});
  }
}

class SuraDetailsModel {
  String name;
  int index;

  SuraDetailsModel(this.name, this.index);
}
