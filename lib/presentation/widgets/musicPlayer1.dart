import 'package:application/core/textStyles_const.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../../core/colorStyles_const.dart';

class MusicPlayer1 extends StatefulWidget {
  const MusicPlayer1({super.key});

  @override
  State<MusicPlayer1> createState() => _MusicPlayer1State();
}

class _MusicPlayer1State extends State<MusicPlayer1> {
  bool isPlaying = false;
  double value = 0;
  final player = AudioPlayer();

  Duration? duration = const Duration(seconds: 0);

  void initPlayer() async {
    await player.setSource(AssetSource('music/byrUzymNan.mp3'));
    duration = await player.getDuration();
  }

  @override
  void initState() {
    super.initState();
    initPlayer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                player.pause();
                Navigator.of(context).pop();
              }),
          backgroundColor: ColorStyles.appBarColor,
          title: Text(
            "А әріпі",
            style: TextStyles.greyDarkMediumStyle.copyWith(fontSize: 28),
          ),
        ),
        body: Column(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(8, 16, 8, 0),
                    child: Text(
                      '''«А» – көптеген әліпбидің алғашқы әрпі. Символ танушы мамандар басқа әріптің барлығы «А» дыбысынан шыққан деп сендіреді. «А» әлемде ең көп таралған дауысты дыбыс. Ғаламда мұндай дыбысы жоқ тіл болмаған. Убых тілінің алфавитінде «А» әрпінен өзге дауысты дыбыс жоқ.''',
                      style: TextStyles.greyDarkMediumStyle.copyWith(
                          color: ColorStyles.blackColor, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
