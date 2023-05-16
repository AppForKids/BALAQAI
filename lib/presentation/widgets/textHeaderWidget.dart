import 'package:application/presentation/widgets/barlygyPage.dart';
import 'package:flutter/material.dart';

import '../../core/colorStyles_const.dart';
import '../../core/textStyles_const.dart';

class TextHeaderWidget extends StatelessWidget {
  final String title;
  final List images;
  final List names;
  const TextHeaderWidget(
      {super.key,
      required this.title,
      required this.images,
      required this.names});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0, top: 16, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyles.greyDarkBoldStyle
                .copyWith(color: ColorStyles.textHeader),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => BarlygyPage(
                            images: images,
                            names: names,
                            title: title,
                          ))));
            },
            child: Text('Барлығы',
                style: TextStyles.greyDarkBoldStyle
                    .copyWith(color: ColorStyles.appBarColor)),
          )
        ],
      ),
    );
  }
}
