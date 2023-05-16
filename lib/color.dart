import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


class next extends StatefulWidget {
  const next({Key? key}) : super(key: key);

  @override
  State<next> createState() => _nextState();
}

class _nextState extends State<next> {
  void playsound(int soundNumber){
    final player=AudioPlayer();
    player.play('audio/m1$soundNumber.wav' as Source);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text('Xylophone'),
      )),
      body: Column(
        children: [
          buildExpanded(Colors.red,1),
          buildExpanded(Colors.orange,2),
          buildExpanded(Colors.yellow,3),
          buildExpanded(Colors.green,4),
          buildExpanded(Colors.blue,5),
          buildExpanded(Colors.grey,6),
          buildExpanded(Colors.pink,7),
        ],
      ),
    );
  }

  Expanded buildExpanded(Color keycolor,int sound) => Expanded(
    child: Container(
        color: keycolor,
        child: Center(child: TextButton(onPressed: () {
          playsound(sound);
        },
            child: Text('AUDIO')),
        )),
  );
}

