import 'package:flutter/material.dart';
import '../../../core/colorStyles_const.dart';
import '../../../core/textStyles_const.dart';
import '../../widgets/containerPictureWidget3.dart';
import '../../widgets/textHeadersWidget.dart';
import '../widget/jenreMusic.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({super.key});

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorStyles.appBarColor,
          title: Text(
            "Әндер",
            style: TextStyles.greyDarkMediumStyle.copyWith(fontSize: 28),
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            children: [
              const JenreMusicWidget(
                  firstImgUrl: 'assets/icons/lastMusic.jpg',
                  firstImgTitle: 'Соңғы \nтыңдалған',
                  secondImgUrl: 'assets/icons/modernMusic.jpg',
                  secondImgTitle: 'Заманауи \nәндер'),
              const JenreMusicWidget(
                  firstImgUrl: 'assets/icons/nationalMusic.jpg',
                  firstImgTitle: 'Халық әндері',
                  secondImgUrl: 'assets/icons/modernMusic.jpg',
                  secondImgTitle: 'Күйлер'),
              const JenreMusicWidget(
                  firstImgUrl: 'assets/icons/kidsMusic.jpg',
                  firstImgTitle: 'Балалар әндері',
                  secondImgUrl: 'assets/icons/poetryMusic.jpg',
                  secondImgTitle: 'Поэзия'),
              const SizedBox(height: 18),
              const TextHeadersWidget(
                title: 'Жинақтар',
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    ContainerPictureWidget3(
                      imgUrl: 'assets/images/collection1.jpg',
                      title: 'Мұхтар Шахановтың     \nүздік әндері',
                    ),
                    ContainerPictureWidget3(
                      imgUrl: 'assets/images/collection2.jpg',
                      title: 'Заманауи әндер        \nжинағы',
                    ),
                    ContainerPictureWidget3(
                      imgUrl: 'assets/images/collection3.jpg',
                      title: 'Балаларға арналған \nәндер жинағы',
                    ),
                  ],
                ),
              ),
              const TextHeadersWidget(
                title: 'Авторлар',
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    ContainerPictureWidget3(
                      imgUrl: 'assets/images/abay.png',
                      title: '  Абай Құнанбаев ',
                    ),
                    ContainerPictureWidget3(
                      imgUrl: 'assets/images/shemshi.png',
                      title: '   Шемші Қалдаяқов ',
                    ),
                    ContainerPictureWidget3(
                      imgUrl: 'assets/images/kurmangazy.png',
                      title: '   Құрманғазы ',
                    ),
                  ],
                ),
              ),
              const TextHeadersWidget(
                title: 'Балаларға арналған өлеңдер',
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ContainerPictureWidget3(
                      imgUrl: 'assets/images/2-3.png',
                      title: '   2-3 жасар балаға    ',
                    ),
                    ContainerPictureWidget3(
                      imgUrl: 'assets/images/4-5.png',
                      title: '   4-5 жасар балаға       ',
                    ),
                    ContainerPictureWidget3(
                      imgUrl: 'assets/images/6-7.png',
                      title: '6-7 жасар балаға',
                    ),
                  ],
                ),
              ),
              const TextHeadersWidget(
                title: 'Атақты күйшілер',
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ContainerPictureWidget3(
                      imgUrl: 'assets/images/kurmangazy2.png',
                      title: '  Құрманғазы              ',
                    ),
                    ContainerPictureWidget3(
                      imgUrl: 'assets/images/dina.png',
                      title: '   Дина Нұрпейіс           ',
                    ),
                    ContainerPictureWidget3(
                      imgUrl: 'assets/images/nurgisa.png',
                      title: '  Нургиса Тлендиев ',
                    ),
                  ],
                ),
              ),
              const TextHeadersWidget(title: 'Термелер'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    ContainerPictureWidget3(
                      imgUrl: 'assets/images/meirambek.png',
                      title: 'Мейрамбек термесі',
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
                    ContainerPictureWidget3(
                      imgUrl: 'assets/images/karaSoz.png',
                      title: '  Бірінші қара сөз    \n',
                    ),
                    ContainerPictureWidget3(
                      imgUrl: 'assets/images/karaSoz.png',
                      title: '  Екінші қара сөз       \n',
                    ),
                    ContainerPictureWidget3(
                      imgUrl: 'assets/images/karaSoz.png',
                      title: '  Үшінші қара сөз\n',
                    ),
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}
