import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import '../../../core/colorStyles_const.dart';
import '../../../core/textStyles_const.dart';
import '../widgets/containerPictureWidget1.dart';
import '../widgets/textHeadersWidget.dart';

class StudyScreen extends StatefulWidget {
  const StudyScreen({super.key});

  @override
  State<StudyScreen> createState() => _StudyScreenState();
}

class _StudyScreenState extends State<StudyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorStyles.appBarColor,
        title: Text(
          "Оқу",
          style: TextStyles.greyDarkMediumStyle.copyWith(fontSize: 28),
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Column(
          children: [
            const TextHeadersWidget(
              title: 'Әріптер мен сөздер',
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  ContainerPictureWidget1(
                    imgUrl: 'assets/images/letterA.jpg',
                    title: '   А әріпі                     ',
                  ),
                  ContainerPictureWidget1(
                    imgUrl: 'assets/images/letter2.jpg',
                    title: '   Ә әріпі                     ',
                  ),
                  ContainerPictureWidget1(
                    imgUrl: 'assets/images/letterB.jpg',
                    title: '   Б әріпі                     ',
                  ),
                ],
              ),
            ),
            const TextHeadersWidget(
              title: 'Цифрлар мен сандар',
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ContainerPictureWidget1(
                    imgUrl: 'assets/images/first.jpg',
                    title: 'Бір дегенім бірлік    ',
                  ),
                  ContainerPictureWidget1(
                    imgUrl: 'assets/images/second.jpg',
                    title: 'Екі дегенім екі       ',
                  ),
                  ContainerPictureWidget1(
                    imgUrl: 'assets/images/third.jpg',
                    title: 'Үш дегенім үш         ',
                  ),
                ],
              ),
            ),
            const TextHeadersWidget(
              title: 'Әр түрліні үйренейік',
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ContainerPictureWidget1(
                    imgUrl: 'assets/images/animal.png',
                    title: 'Жануарлар    ',
                  ),
                  ContainerPictureWidget1(
                    imgUrl: 'assets/images/moo.png',
                    title: 'Жануар дауысы    ',
                  ),
                  ContainerPictureWidget1(
                    imgUrl: 'assets/images/clothes.jpg',
                    title: 'Киімдер    ',
                  ),
                  ContainerPictureWidget1(
                    imgUrl: 'assets/images/music.png',
                    title: 'Аспаптар',
                  ),
                ],
              ),
            ),
            const TextHeadersWidget(title: 'Күнделікті өмір'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  ContainerPictureWidget1(
                    imgUrl: 'assets/images/kitchen.png',
                    title: 'Ас үй \nзаттары',
                  ),
                  ContainerPictureWidget1(
                    imgUrl: 'assets/images/bath.png',
                    title: 'Жуынатын бөлме\nзаттары',
                  ),
                  ContainerPictureWidget1(
                    imgUrl: 'assets/images/bedroom.png',
                    title: 'Жатын бөлме\nзаттары',
                  ),
                  ContainerPictureWidget1(
                    imgUrl: 'assets/images/livingRoom.png',
                    title: 'Қонақ бөлме \nзаттары',
                  ),
                ],
              ),
            ),
            const TextHeadersWidget(title: 'Пішіндерді үйренейік'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  ContainerPictureWidget1(
                    imgUrl: 'assets/images/circle.png',
                    title: 'Дөңгелек\n',
                  ),
                  ContainerPictureWidget1(
                    imgUrl: 'assets/images/square.png',
                    title: 'Төртбұрыш\n',
                  ),
                  ContainerPictureWidget1(
                    imgUrl: 'assets/images/triangle.png',
                    title: 'Үшбұрыш\n',
                  ),
                  ContainerPictureWidget1(
                    imgUrl: 'assets/images/rectangle.png',
                    title: 'Тікөтөртбұрыш\n',
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
