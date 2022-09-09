import 'dart:convert';

import 'package:audioplayers/audioplayers.dart';
import 'package:eslamy/tabs/radio/radio_item.dart';
import 'package:eslamy/tabs/radio/radio_response.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Radioo extends StatefulWidget {
  @override
  State<Radioo> createState() => _RadiooState();
}

class _RadiooState extends State<Radioo> {
  late Future<RadioResponse> radioresponseFuture;
  late AudioPlayer audioPlayer;

  @override
  void initState() {
    super.initState();
    radioresponseFuture = getRadios();
    audioPlayer = AudioPlayer();
  }

  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return FutureBuilder<RadioResponse>(
        future: radioresponseFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Radios> radios = snapshot.data?.radios ?? [];
            return Column(
              children: [
                Expanded(
                    flex: 2, child: Image.asset('assets/images/radio0.png')),
                Expanded(
                  child: ListView.builder(
                    physics: PageScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                        width: width,
                        child: Center(
                          child: SizedBox(
                            width: width * 0.9,
                            child: RadioItem(radios[index], audioPlayer),
                          ),
                        )),
                  ),
                )
                // Text(radios[0].name ??''),
              ],
            );
          } else if (snapshot.hasError) {
            return Center(
              child: IconButton(
                onPressed: () {
                  radioresponseFuture = getRadios();
                },
                icon: Icon(Icons.refresh),
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}

Future<RadioResponse> getRadios() async {
  var uri = Uri.parse('https://api.mp3quran.net/radios/radio_arabic.json');
  var response = await http.get(uri);
  var json = jsonDecode(utf8.decode(response.bodyBytes));
  if (response.statusCode == 200) {
    return RadioResponse.fromJson(json);
  } else {
    throw Exception('Failed to load radios');
  }
}
