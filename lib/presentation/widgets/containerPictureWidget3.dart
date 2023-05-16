import 'package:application/presentation/widgets/musicPlayer2.dart';
import 'package:flutter/material.dart';

import '../../core/colorStyles_const.dart';
import '../../core/textStyles_const.dart';

class ContainerPictureWidget3 extends StatelessWidget {
  final String imgUrl;
  final String title;
  const ContainerPictureWidget3(
      {super.key, required this.imgUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MusicPlayer2()));
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    imgUrl,
                  ),
                ),
              ),
            ),
          ),
          Text(title,
              style: TextStyles.greyDarkRegularStyle
                  .copyWith(fontSize: 14, color: ColorStyles.textHeader))
        ],
      ),
    );
  }
}
