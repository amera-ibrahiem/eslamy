import 'package:flutter/material.dart';

class Tasbeh extends StatefulWidget {
  @override
  State<Tasbeh> createState() => _TasbehState();
}

class _TasbehState extends State<Tasbeh> {
  int counter = 0;
  int index = 0;
  List<String> azkar = [
    'سبحان الله',
    'الحمد لله',
    'الله اكبر',
    'لا اله الا الله',
    'لا حول و لا قوة الا بالله'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
            onTap: (() {
              countSebha();
            }),
            child: Center(
              child: Image.asset('assets/images/sebhapic.png'),
            )),
        SizedBox(
          height: 55,
        ),
        Text(
          'عدد التسبيحات',
          style: Theme.of(context).textTheme.headline2,
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Theme.of(context).primaryColor,
            child:
                Text('$counter', style: Theme.of(context).textTheme.headline2),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(20)),
          child: Text('${azkar[index]}',
              style: Theme.of(context).textTheme.headline2),
        ),
      ],
    );
  }

  void countSebha() {
    counter++;
    if (counter >= 33 && counter % 33 == 0) {
      index++;
    }
    if (counter > (azkar.length * 33) - 1) {
      index = 0;
    }
    setState(() {});
  }
}
