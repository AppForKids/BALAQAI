import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import '../../widgets/textHeadersWidget.dart';
import '../../../core/colorStyles_const.dart';
import '../../../core/textStyles_const.dart';
import '../../widgets/containerPictureWidget.dart';
import '../../widgets/containerPictureWidget2.dart';

class Books extends StatefulWidget {
  const Books({super.key});

  @override
  State<Books> createState() => _BooksState();
}

class _BooksState extends State<Books> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Оқу"),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Column(
          children: [
            const textHeadersWidget(
              title: 'Әріптер мен сөздер',
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/a.png',
                    title: '   А әріпі                     ',
                  ),
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/ae.png',
                    title: '   Ә әріпі                     ',
                  ),
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/b.png',
                    title: '   Б әріпі                     ',
                  ),
                ],
              ),
            ),
            const textHeadersWidget(
              title: 'Цифрлар мен сандар',
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/1.png',
                    title: 'Бір дегенім бірлік    ',
                  ),
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/2.png',
                    title: 'Екі дегенім екі       ',
                  ),
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/3.png',
                    title: 'Үш дегенім үш         ',
                  ),
                ],
              ),
            ),
            const textHeadersWidget(
              title: 'Әр түрліні үйренейік',
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/animal.png',
                    title: 'Жануарлар    ',
                  ),
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/moo.png',
                    title: 'Жануар дауысы    ',
                  ),
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/clothes.jpg',
                    title: 'Киімдер    ',
                  ),
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/music.png',
                    title: 'Аспаптар',
                  ),
                ],
              ),
            ),
            const textHeadersWidget(title: 'Күнделікті өмір'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/kitchen.png',
                    title: 'Ас үй \nзаттары',
                  ),
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/bath.png',
                    title: 'Жуынатын бөлме\nзаттары',
                  ),
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/bedroom.png',
                    title: 'Жатын бөлме\nзаттары',
                  ),
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/lr.png',
                    title: 'Қонақ бөлме \nзаттары',
                  ),
                ],
              ),
            ),
            const textHeadersWidget(title: 'Пішіндерді үйренейік'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/yuv.png',
                    title: 'Дөңгелек\n',
                  ),
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/square.png',
                    title: 'Төртбұрыш\n',
                  ),
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/triangle.png',
                    title: 'Үшбұрыш\n',
                  ),
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/rect.png',
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
