import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../widgets/textHeadersWidget.dart';
import '../../../core/colorStyles_const.dart';
import '../../../core/textStyles_const.dart';
import '../../widgets/containerPictureWidget.dart';
import '../../widgets/containerPictureWidget2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Басты бет"),
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
                    border: Border.all(width: 2, color: Colors.grey)),
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Сүйікті ертегілер",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Color.fromRGBO(30, 30, 30, 1),
                      ),
                    ),
                    const VerticalDivider(
                      color: Color.fromRGBO(159, 174, 179, 1),
                      thickness: 2,
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
            const textHeadersWidget(
              title: 'Жаңа жинақтар',
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/jana1.png',
                    title: 'Мұхтар Шахановтың     \nүздік шығармалары',
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
            const textHeadersWidget(
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
                    imgUrl: 'assets/images/ertegi1.jpeg',
                    title: '    Қасқыр мен егінші  ',
                  ),
                  ContainerPictureWidget(
                    imgUrl: 'assets/images/image3.jpg',
                    title: 'Мақта қызбен   \nмысық',
                  ),
                ],
              ),
            ),
            const textHeadersWidget(title: 'Қазақша мультфильмдер'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  ContainerPictureWidget2(
                    imgUrl: 'assets/images/kazakhCartoon2.jpg',
                    title: 'Қобыланды Батыр туралы     ',
                  ),
                  ContainerPictureWidget2(
                    imgUrl: 'assets/images/cartoon.png',
                    title: 'Қозы-Көрпеш Баян-Сұлу',
                  ),
                ],
              ),
            ),
            const textHeadersWidget(title: 'Абайдың қара сөздері'),
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
            const textHeadersWidget(title: 'Оқу'),
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
      )),
    );
  }
}
