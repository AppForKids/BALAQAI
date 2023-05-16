import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PlayYTVideo extends StatefulWidget {
  @override
  _PlayYTVideoState createState() => _PlayYTVideoState();
}

class _PlayYTVideoState extends State<PlayYTVideo> {
  String videoURL = "https://youtu.be/f7V0HLMiM8g";

  late YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(videoURL)!,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Youtube Player"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
