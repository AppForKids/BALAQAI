import 'package:application/core/textStyles_const.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../../core/colorStyles_const.dart';

class MusicPlayer2 extends StatefulWidget {
  const MusicPlayer2({super.key});

  @override
  State<MusicPlayer2> createState() => _MusicPlayer2State();
}

class _MusicPlayer2State extends State<MusicPlayer2> {
  bool isPlaying = false;
  double value = 0;
  final player = AudioPlayer();

  Duration? duration = const Duration(seconds: 0);

  void initPlayer() async {
    await player.setSource(AssetSource('music/abay1.mp3'));
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
            "Абайдың Бірінші қара сөзү",
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
                      '''Бұл жасқа келгенше жақсы өткіздік пе, жаман өткіздік пе, әйтеуір бірталай өмірімізді өткіздік: алыстық, жұлыстық, айтыстық, тартыстық – әурешілікті көре-көре келдік. Енді жер ортасы жасқа келдік: қажыдық, жалықтық; қылып жүрген ісіміздің баянсызын, байлаусызын көрдік, бәрі қоршылық екенін білдік. Ал, енді қалған өмірімізді қайтіп, не қылып өткіземіз? Соны таба алмай өзім де қайранмын.


Ел бағу? Жоқ, елге бағым жоқ. Бағусыз дертке ұшырайын деген кісі бақпаса, не албыртқан, көңілі басылмаған жастар бағамын демесе, бізді құдай сақтасын!

Мал бағу? Жоқ, баға алмаймын. Балалар өздеріне керегінше өздері бағар. Енді қартайғанда қызығын өзің түгел көре алмайтұғын, ұры, залым, тілемсектердің азығын бағып беремін деп, қалған аз ғана өмірімді қор қылар жайым жоқ.

Ғылым бағу? Жоқ, ғылым бағарға да ғылым сөзін сөйлесер адам жоқ. Білгеніңді кімге үйретерсің, білмегеніңді кімнен сұрарсың? Елсіз-күнсізде кездемені жайып салып, қолына кезін алып отырғанның не пайдасы бар? Мұңдасып шер тарқатысар кісі болмаған соң, ғылым өзі – бір тез қартайтатұғын күйік.''',
                      style: TextStyles.greyDarkMediumStyle.copyWith(
                          color: ColorStyles.blackColor, fontSize: 14),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          '${((value / 60) > 10) ? '' : '0'}${(value / 60).floor()}:${((value % 60) > 10) ? '' : '0'}${(value % 60).floor()}',
                          style: TextStyles.greyDarkSemiBoldStyle
                              .copyWith(color: ColorStyles.blackColor)),
                      Slider.adaptive(
                        min: 0.0,
                        max: duration!.inSeconds.toDouble(),
                        value: value,
                        onChanged: (v) {
                          value = v;
                        },
                        onChangeEnd: (newValue) async {
                          setState(() {
                            value = newValue;
                          });
                          player.pause();
                          await player
                              .seek(Duration(seconds: newValue.toInt()));
                          await player.resume();
                        },
                        activeColor: ColorStyles.whiteColor,
                      ),
                      Text(
                          '${duration!.inMinutes} : ${duration!.inSeconds % 60}',
                          style: TextStyles.greyDarkSemiBoldStyle
                              .copyWith(color: ColorStyles.blackColor)),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: ColorStyles.appBarColor,
                      border: Border.all(color: ColorStyles.appBarColor),
                    ),
                    child: InkWell(
                      onTap: () async {
                        if (isPlaying) {
                          await player.pause();
                          setState(() {
                            isPlaying = false;
                          });
                        } else {
                          await player.resume();
                          setState(() {
                            isPlaying = true;
                          });

                          player.onPositionChanged.listen((position) {
                            setState(() {
                              value = position.inSeconds.toDouble();
                            });
                          });

                          // setState(() async {
                          //   duration = await player.getDuration();
                          // });
                        }
                      },
                      child: Icon(isPlaying ? Icons.pause : Icons.play_arrow,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
