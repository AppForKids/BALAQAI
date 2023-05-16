import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/colorStyles_const.dart';
import '../../../core/textStyles_const.dart';
import '../../widgets/containerPictureWidget.dart';
import '../../widgets/textHeadersWidget.dart';

class FairyTalesPage extends StatefulWidget {
  const FairyTalesPage({super.key});

  @override
  State<FairyTalesPage> createState() => _FairyTalesPageState();
}

class _FairyTalesPageState extends State<FairyTalesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorStyles.appBarColor,
          title: Text(
            "Ертегілер",
            style: TextStyles.greyDarkMediumStyle.copyWith(fontSize: 28),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 19, 16, 17),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      border: Border.all(
                          width: 2, color: ColorStyles.verticalDividerColor),
                    ),
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Аудио-ертегілер",
                            style: TextStyles.greyDarkBoldStyle.copyWith(
                                fontSize: 14, color: ColorStyles.textHeader)),
                        const VerticalDivider(
                          color: ColorStyles.verticalDividerColor,
                          thickness: 2,
                        ),
                        Text("Мультфильмдер",
                            style: TextStyles.greyDarkBoldStyle.copyWith(
                                fontSize: 14, color: ColorStyles.textHeader)),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                        color: ColorStyles.textDarkBlueColor.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Кез келген ертегіні қосу",
                            style: TextStyles.greyDarkBoldStyle
                                .copyWith(color: ColorStyles.textDarkBlueColor),
                          ),
                          SvgPicture.asset('assets/icons/playAudio.svg'),
                        ],
                      )),
                ),
                const TextHeadersWidget(
                  title: 'Ертегілер',
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      ContainerPictureWidget(
                        imgUrl: 'assets/images/image1.jpg',
                        title: '  Бір үзім нан                 ',
                      ),
                      ContainerPictureWidget(
                        imgUrl: 'assets/images/image2.jpg',
                        title: 'Алдар көсе    ',
                      ),
                      ContainerPictureWidget(
                        imgUrl: 'assets/images/image4.jpeg',
                        title: '    Қасқыр мен егінші  ',
                      ),
                      ContainerPictureWidget(
                        imgUrl: 'assets/images/image3.jpg',
                        title: 'Мақта қызбен \nмысық',
                      ),
                    ],
                  ),
                ),
                const TextHeadersWidget(
                  title: 'Алдар көсе туралы ертегілер',
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      ContainerPictureWidget(
                        imgUrl: 'assets/images/alashaKhan.png',
                        title: '   Алдар көсе мен            \n    Алаша хан',
                      ),
                      ContainerPictureWidget(
                        imgUrl: 'assets/images/eginshiBay.png',
                        title: '   Алдар көсе мен            \n    егінші бай',
                      ),
                      ContainerPictureWidget(
                        imgUrl: 'assets/images/shaytan.png',
                        title: '   Алдар көсе мен\n   шайтан',
                      ),
                    ],
                  ),
                ),
                const TextHeadersWidget(
                  title: 'Батырлар туралы ертегілер',
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      ContainerPictureWidget(
                        imgUrl: 'assets/images/agayindiEkiZhigit.png',
                        title: 'Ағайынды екі       \nжігіт',
                      ),
                      ContainerPictureWidget(
                        imgUrl: 'assets/images/akbilekKiz.png',
                        title: 'Акбілек қыз        \nТұрғын бала',
                      ),
                      ContainerPictureWidget(
                        imgUrl: 'assets/images/alaKozBatir.png',
                        title: 'Ала көз батыр\n',
                      ),
                    ],
                  ),
                ),
                const TextHeadersWidget(title: 'Ғажайып ертегілер'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      ContainerPictureWidget(
                        imgUrl: 'assets/images/altinKus.png',
                        title: '   Алтын құс               ',
                      ),
                      ContainerPictureWidget(
                        imgUrl: 'assets/images/karaMergen.png',
                        title: '   Қара мерген               ',
                      ),
                      ContainerPictureWidget(
                        imgUrl: 'assets/images/agashAt.png',
                        title: '   Ағаш ат                ',
                      ),
                    ],
                  ),
                ),
                const TextHeadersWidget(title: 'Жануарлар туралы ертегілер'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      ContainerPictureWidget(
                        imgUrl: 'assets/images/aramTulki.png',
                        title: '   Арам түлкі                 ',
                      ),
                      ContainerPictureWidget(
                        imgUrl: 'assets/images/altiTulki.png',
                        title: '   Алты түлкі                  ',
                      ),
                      ContainerPictureWidget(
                        imgUrl: 'assets/images/aksakKulan.png',
                        title: '   Ақсақ құлан',
                      ),
                    ],
                  ),
                ),
                const TextHeadersWidget(title: 'Әйтеуір бір ертегілер'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      ContainerPictureWidget(
                        imgUrl: 'assets/images/uakit.png',
                        title: '   Уақыт жайлы             \n   ертегі\n',
                      ),
                      ContainerPictureWidget(
                        imgUrl: 'assets/images/birAshulangan.png',
                        title:
                            '   Бір ашуланғанда         \n     сексенді    қырған\n',
                      ),
                      ContainerPictureWidget(
                        imgUrl: 'assets/images/adamBolgan.png',
                        title: '   Адам болған             \n   жылан\n',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
