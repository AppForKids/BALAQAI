import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import '../../../core/colorStyles_const.dart';
import '../../../core/textStyles_const.dart';
import '../widgets/containerPictureWidget.dart';
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
        title: Text("Оқу", style: TextStyles.greyDarkMediumStyle.copyWith(fontSize: 28),),
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
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/letterA.jpg',
                    title: '   А әріпі                     ',
                  ),
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/letter2.jpg',
                    title: '   Ә әріпі                     ',
                  ),
                  ContainerPictureWidget(
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
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/first.jpg',
                    title: 'Бір дегенім бірлік    ',
                  ),
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/second.jpg',
                    title: 'Екі дегенім екі       ',
                  ),
                  ContainerPictureWidget(
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
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/Abay.jpg',
                    title: 'Жануарлар    ',
                  ),
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/Abay.jpg',
                    title: 'Жануар дауысы    ',
                  ),
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/Abay.jpg',
                    title: 'Киімдер    ',
                  ),
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/Abay.jpg',
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
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/Abay.jpg',
                    title: 'Ас үй \nзаттары',
                  ),
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/Abay.jpg',
                    title: 'Жуынатын бөлме\nзаттары',
                  ),
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/Abay.jpg',
                    title: 'Жатын бөлме\nзаттары',
                  ),
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/Abay.jpg',
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
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/Abay.jpg',
                    title: 'Дөңгелек\n',
                  ),
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/Abay.jpg',
                    title: 'Төртбұрыш\n',
                  ),
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/Abay.jpg',
                    title: 'Үшбұрыш\n',
                  ),
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/Abay.jpg',
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
