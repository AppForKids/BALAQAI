import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/colorStyles_const.dart';
import '../../../core/textStyles_const.dart';
import '../widgets/containerPictureWidget.dart';
import '../widgets/containerPictureWidget2.dart';
import '../widgets/textHeadersWidget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: ColorStyles.appBarColor,
        title: Text("Басты бет", style: TextStyles.greyDarkMediumStyle.copyWith(fontSize: 28),),
      ),
      body: SingleChildScrollView(
          child: Padding(
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
                  children: const [
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
            const TextHeadersWidget(
              title: 'Жаңа жинақтар',
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                    ContainerPictureWidget(imgUrl: 'assets/images/collection1.jpg', title: 'Мұхтар Шахановтың \nүздік әндері',),
                    ContainerPictureWidget(imgUrl: 'assets/images/collection2.jpg', title: 'Заманауи әндер \nжинағы',),
                    ContainerPictureWidget(imgUrl: 'assets/images/collection2.jpg', title: 'Балаларға арналған \nәндер жинағы',),
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
                    ContainerPictureWidget(imgUrl: 'assets/images/image1.jpg', title: 'Бір үзім нан',),
                    ContainerPictureWidget(imgUrl: 'assets/images/image2.jpg', title: 'Алдар көсе',),
                    ContainerPictureWidget(imgUrl: 'assets/images/image3.jpg', title: 'Мақта қызбен \nмысық',),
                ],
              ),
            ),
            const TextHeadersWidget(title: 'Қазақша мультфильмдер'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  ContainerPictureWidget(imgUrl: 'assets/images/kazakhCartoon2.jpg', title: 'Қобыланды Батыр туралы',),
                    ContainerPictureWidget(imgUrl: 'assets/images/kazakhCartoon1.jpg', title: 'Қозы-Көрпеш Баян-Сұлу',),
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
                  ContainerPictureWidget(imgUrl: 'assets/images/study1.jpg', title: 'Әліппе',),
                    ContainerPictureWidget(imgUrl: 'assets/images/study2.jpg', title: 'Сандар',),
                    ContainerPictureWidget(imgUrl: 'assets/images/study3.jpg', title: 'Түстер',),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
