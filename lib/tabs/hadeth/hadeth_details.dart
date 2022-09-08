import 'package:eslamy/provider/my_provider.dart';
import 'package:eslamy/tabs/hadeth/hadeth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = 'detailhadeth';

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProviderApp>(context);
    AhadethModel model =
        ModalRoute.of(context)!.settings.arguments as AhadethModel;
    return Stack(
      children: [
        Image.asset(
          pro.getBackground(),
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              '${model.title}',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Divider(
                  color: Theme.of(context).primaryColor,
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '${model.content}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
