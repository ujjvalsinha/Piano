import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audio_cache.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static AudioCache player = AudioCache();

  Widget button(txt) {
    return GestureDetector(
        child: Container(
            width: 95,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  image: AssetImage("images/Piano.png"), fit: BoxFit.cover),
            )),
        onTap: () {
          pressed(txt);
        });
  }

  pressed(txt) {
    player.play("${(txt).toString()}.wav");
  }

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Row(
            children: <Widget>[
              button("A"),
              button("B"),
              button("C"),
              button("D"),
              button("E"),
              button("G"),
              button("A"),
            ],
          ),
        ),
      ),
    );
  }
}
