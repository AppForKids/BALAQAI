import 'package:flutter/material.dart';
import '../../../core/colorStyles_const.dart';
import '../../../core/textStyles_const.dart';
import '../../widgets/containerPictureWidget.dart';
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
        title: Text("Әндер", style: TextStyles.greyDarkMediumStyle.copyWith(fontSize: 28),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            children:   [
              const JenreMusicWidget(
                firstImgUrl: 'assets/icons/lastMusic.jpg', 
                firstImgTitle: 'Соңғы \nтыңдалған', 
                secondImgUrl: 'assets/icons/modernMusic.jpg',
                secondImgTitle: 'Заманауи \nәндер'
                ),
                const JenreMusicWidget(
                firstImgUrl: 'assets/icons/nationalMusic.jpg', 
                firstImgTitle: 'Халық әндері', 
                secondImgUrl: 'assets/icons/modernMusic.jpg',
                secondImgTitle: 'Күйлер'
                ),
                const JenreMusicWidget(
                firstImgUrl: 'assets/icons/kidsMusic.jpg', 
                firstImgTitle: 'Балалар әндері', 
                secondImgUrl: 'assets/icons/poetryMusic.jpg',
                secondImgTitle: 'Поэзия'
                ),
                const SizedBox(height: 18),
                const TextHeadersWidget(title: 'Жинақтар',),

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
            ],
          ),
        )
      )
    );
  }
}