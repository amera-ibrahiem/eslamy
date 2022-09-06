import 'package:eslamy/tabs/hadeth/hadeth_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../my_theme.dart';

class Hadeth extends StatefulWidget {
  @override
  State<Hadeth> createState() => _HadethState();
}

class _HadethState extends State<Hadeth> {
  List<AhadethModel> AllAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (AllAhadeth.isEmpty) {
      loadHadethFile();
    }
    return Column(
      children: [
        Center(child: Image.asset('assets/images/hadethpic.png')),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 2,
        ),
        Text(
          'Ahadeth',
          style: Theme.of(context).textTheme.headline2,
        ),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 2,
        ),
        AllAhadeth.length == 0
            ? Center(child: CircularProgressIndicator())
            : Expanded(
                child: ListView.separated(
                  separatorBuilder: (_, index) {
                    return Container(
                      height: 1,
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      color: MyThemeData.primaryColor,
                    );
                  },
                  itemBuilder: (_, index) {
                    return HadethItems(AllAhadeth[index]);
            },
            itemCount: AllAhadeth.length,
          ),
        )
      ],
    );
  }

  void loadHadethFile() async {
    String content = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadeth = content.trim().split('#\r\n');
    for (int i = 0; i < hadeth.length; i++) {
      String hadethnum = hadeth[i];
      hadethnum.trim();
      List<String> lines = hadethnum.split('\n');
      String titles = lines[0];
      lines.removeAt(0);
      AhadethModel ahadethmodel = AhadethModel(titles, lines);
      AllAhadeth.add(ahadethmodel);
    }
    setState(() {});
  }
}

class AhadethModel {
  String title;
  List<String> content;

  AhadethModel(this.title, this.content);
}
