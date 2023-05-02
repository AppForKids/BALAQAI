import 'package:flutter/material.dart';

import '../../core/colorStyles_const.dart';
import '../../core/textStyles_const.dart';
class TextHeadersWidget extends StatelessWidget {
  final String title;
  const TextHeadersWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding: const EdgeInsets.only(right: 16.0, top: 16, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title,
                  style: TextStyles.greyDarkBoldStyle.copyWith(color: ColorStyles.textHeader),),
            
                  Text('Барлығы',
                  style: TextStyles.greyDarkBoldStyle.copyWith(color: ColorStyles.appBarColor))
                ],
              ),
            );
  }
}