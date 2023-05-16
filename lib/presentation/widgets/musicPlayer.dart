import 'package:application/core/textStyles_const.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../../core/colorStyles_const.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
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
            "Бір үзім нан",
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
                      '''Баяғы бір заманда бай мен кедей көрші өмір сүріпті. Олардың араздығы сондай, бірін-бірі көргісі келмейді екен. Байдың үйі кең, әдемі болыпты. Іші толған – алтын мен күміс. Ал кедейдің үйі ағаштан жасалған, төбесін бұтамен жапқан қора екен. Алтын мен күміс түгілі, нанын әзер тауып жепті. Егін егіп, оны суарып, күтіп, орып, өз күнін өзі көріпті. Бір жылы көктемде алапат, су тасқыны болады. Бай алтынын көтеріп ағаштың басына шығып кетеді. Ал кедей болса, бір көмеш нанын қойнына салып, ол да ағаштың басына көтеріледі. Су тасқыны он бес күнге созылады. Бір күні қарны ашқан бай кедейге: – Әй, кедей, сен мына бір кесек алтынды ал да, маған бір үзім нан бер, - дейді. - Жоқ, алтының өзіңе, нан бере алмаймын, – деп жауап береді кедей. Екінші күні бай кедейден тағы да нан сұрайды. – Алтынымның жартысын берейін, – дейді ол бұл жолы. – Жоқ, бере алмаймын, – деп бұл жолы да кедей келіспейді. Ақыры, аштан өліп бара жатқан соң шыдамай, бай бір үзім нанға барлық алтынын айырбастайтынын айтады. Кедей бәрібір көнбейді. Бойынан күші кеткен бай басы айналып, суға құлап кетеді. Ал келесі күні су тоқтап, кедей ағаштың басынан түседі. Халықтың: «Алтын, күміс – тас екен, арпа, бидай – ас екен» дейтіні осыған орай айтылған екен.''',
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
