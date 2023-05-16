import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/colorStyles_const.dart';
import '../../../core/textStyles_const.dart';
import '../widgets/containerPictureWidget.dart';
import '../widgets/containerPictureWidget2.dart';
import '../widgets/textHeadersWidget.dart';
import '../widgets/musicPlayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/colorStyles_const.dart';
import '../../../core/textStyles_const.dart';
import '../widgets/containerPictureWidget.dart';
import '../widgets/musicPlayer.dart';
import '../widgets/textHeaderWidget.dart';
import '../widgets/textHeadersWidget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final newCollections = [
    'assets/images/collection1.jpg',
    'assets/images/collection2.jpg',
    'assets/images/collection3.jpg',
    'assets/images/image1.jpg',
    'assets/images/image2.jpg',
    'assets/images/image3.jpg'
  ];
  final newCollectionsNames = [
    'Мұхтар Шахановтың \nүздік әндері',
    'Заманауи әндер \nжинағы',
    'Балаларға арналған \nәндер жинағы',
    'Бір үзім нан',
    'Алдар көсе',
    'Мақта қызбен \nмысық'
  ];

  final fairyTales = [
    'assets/images/image1.jpg',
    'assets/images/image2.jpg',
    'assets/images/image3.jpg'
  ];
  final fairyTalesNames = [
    'Бір үзім нан',
    'Алдар көсе',
    'Мақта қызбен \nмысық'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorStyles.appBarColor,
        title: Text(
          "Басты бет",
          style: TextStyles.greyDarkMediumStyle.copyWith(fontSize: 28),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: ColorStyles.appBarColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
              ),
              child: Column(children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: SizedBox(
                        width: 142,
                        height: 150,
                        child: Image.asset(
                          'assets/images/image1.jpg',
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MusicPlayer()));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              // borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image.asset(
                                height: 27, 'assets/icons/play.png'),
                          ),
                        ))
                  ],
                ),
                const SizedBox(height: 12),
                Text('Күн тапсырмасы',
                    style: TextStyles.greyDarkMediumStyle.copyWith(
                      fontSize: 13,
                    )),
                Text('Бір үзім нан',
                    style: TextStyles.greyDarkBoldStyle.copyWith(fontSize: 16)),
                const SizedBox(height: 16),
              ])),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 19, 16, 17),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        border: Border.all(width: 2, color: Colors.grey)),
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 22,
                          child: Image.asset('assets/icons/star.png'),
                        ),
                        Text(
                          "Сүйікті ертегілер",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color.fromRGBO(30, 30, 30, 1),
                          ),
                        ),
                        VerticalDivider(
                          color: Color.fromRGBO(159, 174, 179, 1),
                          thickness: 2,
                        ),
                        Container(
                          height: 22,
                          child: Image.asset('assets/icons/info.png'),
                        ),
                        Text(
                          "Тапсырмалар",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color.fromRGBO(30, 30, 30, 1),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                TextHeaderWidget(
                  title: 'Жаңа жинақтар',
                  images: newCollections,
                  names: newCollectionsNames,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      ContainerPictureWidget(
                        imgUrl: 'assets/images/collection1.jpg',
                        title: 'Мұхтар Шахановтың    \nүздік әндері',
                      ),
                      ContainerPictureWidget(
                        imgUrl: 'assets/images/jana2.png',
                        title: 'Сәкен Сейфуллинның    \nүздік шығармалары',
                      ),
                      ContainerPictureWidget(
                        imgUrl: 'assets/images/jana3.png',
                        title: 'Ыбырай Алтынсаринның  \nүздік шығармалары',
                      ),
                    ],
                  ),
                ),
                const TextHeadersWidget(
                  title: 'Ертегілер',
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                const TextHeadersWidget(title: 'Қазақша мультфильмдер'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      ContainerPictureWidget2(
                        imgUrl: 'assets/images/kazakhCartoon2.jpg',
                        title: 'Қобыланды Батыр туралы',
                      ),
                      ContainerPictureWidget2(
                        imgUrl: 'assets/images/cartoon.png',
                        title: 'Қозы-Көрпеш Баян-Сұлу',
                      ),
                    ],
                  ),
                ),
                const TextHeadersWidget(title: 'Абайдың қара сөздері'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      ContainerPictureWidget(
                        imgUrl: 'assets/images/Abay.jpg',
                        title: 'Абай Құнанбаевтың    \nбірінші қара сөзі',
                      ),
                      ContainerPictureWidget(
                        imgUrl: 'assets/images/Abay.jpg',
                        title: 'Абай Құнанбаевтың    \nекінші қара сөзі',
                      ),
                      ContainerPictureWidget(
                        imgUrl: 'assets/images/Abay.jpg',
                        title: 'Абай Құнанбаевтың    \nүшінші қара сөзі',
                      ),
                    ],
                  ),
                ),
                const TextHeadersWidget(title: 'Оқу'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      ContainerPictureWidget(
                        imgUrl: 'assets/images/study1.jpg',
                        title: 'Әліппе\n',
                      ),
                      ContainerPictureWidget(
                        imgUrl: 'assets/images/study2.jpg',
                        title: 'Сандар\n',
                      ),
                      ContainerPictureWidget(
                        imgUrl: 'assets/images/study3.jpg',
                        title: 'Түстер\n',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
