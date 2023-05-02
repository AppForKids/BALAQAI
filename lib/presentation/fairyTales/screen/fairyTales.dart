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
        title: Text("Ертегілер", style: TextStyles.greyDarkMediumStyle.copyWith(fontSize: 28),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:16.0),
          child: Column(
            
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 19, 16, 17),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(width: 2, color: ColorStyles.verticalDividerColor),
                  ),
                  height: 40,
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Аудио-ертегілер", 
                      style: TextStyles.greyDarkBoldStyle.copyWith(
                        fontSize: 14, 
                        color: ColorStyles.textHeader)
                        ),
                        const VerticalDivider(
                          color: ColorStyles.verticalDividerColor,
                          thickness: 2,
                        ),
                      Text("Мультфильмдер", 
                      style: TextStyles.greyDarkBoldStyle.copyWith(
                        fontSize: 14, 
                        color: ColorStyles.textHeader)
                        ),
                    ],),
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
                            Text("Кез келген ертегіні қосу", 
                            style: TextStyles.greyDarkBoldStyle.copyWith(color: ColorStyles.textDarkBlueColor),),
                            SvgPicture.asset('assets/icons/playAudio.svg'),
                          ],
                        )
                      ),
              ),
        
             const TextHeadersWidget(title: 'Ертегілер',),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    ContainerPictureWidget(imgUrl: 'assets/images/Abay.jpg', title: 'Абай Құнанбаевтың \nбірінші қара сөзі',),
                    ContainerPictureWidget(imgUrl: 'assets/images/Abay.jpg', title: 'Абай Құнанбаевтың \nекінші қара сөзі',),
                    ContainerPictureWidget(imgUrl: 'assets/images/Abay.jpg', title: 'Абай Құнанбаевтың \nүшінші қара сөзі',),
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
            ],),
        ),
      )
      );
  }
}