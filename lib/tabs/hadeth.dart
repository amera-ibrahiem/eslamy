import 'package:flutter/material.dart';

class Hadeth extends StatelessWidget {
  List<String> ahadeth = ['الحد'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset('assets/images/hadethpic.png')),
      ],
    );
  }
}
