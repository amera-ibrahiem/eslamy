import 'package:audioplayers/audioplayers.dart';
import 'package:eslamy/tabs/radio/radio_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioItem extends StatefulWidget {
  Radios radio;
  AudioPlayer audioplayer;

  RadioItem(this.radio, this.audioplayer);

  @override
  State<RadioItem> createState() => _RadioItemState();
}

class _RadioItemState extends State<RadioItem> {
  @override
  play() async {
    await widget.audioplayer.play(UrlSource(widget.radio.radioUrl!));
  }

  void pause() async {
    await widget.audioplayer.pause();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.radio.name ?? '',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  play();
                },
                icon: Icon(Icons.play_arrow_rounded)),
            IconButton(onPressed: pause, icon: Icon(Icons.pause)),
          ],
        )
      ],
    );
  }
}
