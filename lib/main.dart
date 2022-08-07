import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ytcl = YoutubePlayerController(
      initialVideoId: "CkcvVZZEsJE",
    );

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: YoutubePlayerControllerProvider(
            controller: ytcl,
            child: Scaffold(
                appBar: AppBar(
                  title: const Text("Youtube Player"),
                ),
                body: Container(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        const YoutubePlayerIFrame(),
                        const Padding(padding: EdgeInsets.all(30)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  ytcl.play();
                                },
                                child: const Text("play")),
                            ElevatedButton(
                                onPressed: () {
                                  ytcl.pause();
                                },
                                child: const Text("pause")),
                          ],
                        )
                      ],
                    )))));
  }
}
