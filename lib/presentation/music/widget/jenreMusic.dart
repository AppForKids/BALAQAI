import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/colorStyles_const.dart';
import '../../../core/textStyles_const.dart';

class JenreMusicWidget extends StatelessWidget {
  final String firstImgUrl;
  final String firstImgTitle;
  final String secondImgUrl;
  final String secondImgTitle;
  const JenreMusicWidget({super.key, required this.firstImgUrl, required this.firstImgTitle, required this.secondImgUrl, required this.secondImgTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
                padding: const EdgeInsets.only(right: 11, top: 13),
                child: Container(
                  width: MediaQuery.of(context).size.width/2 - 25.5,
                  padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 4),
                  decoration: BoxDecoration(
                    color: ColorStyles.appBarColor.withOpacity(0.24),
                    borderRadius: BorderRadius.circular(9),
                    
                  ),
                  child: Row(
                    children: [
                       Image.asset(firstImgUrl,),
                       const SizedBox(width:11),
                       Center(child: Text(firstImgTitle, style: TextStyles.greyDarkRegularStyle.copyWith(fontSize: 14, color: ColorStyles.textHeader))),
                    ],),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 11, top: 13),
                child: Container(
                  width: MediaQuery.of(context).size.width/2 - 25.5,
                  padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 4),
                  decoration: BoxDecoration(
                    color: ColorStyles.appBarColor.withOpacity(0.24),
                    borderRadius: BorderRadius.circular(9),
                    
                  ),
                  child: Row(
                    children: [
                       Image.asset(secondImgUrl,),
                       const SizedBox(width:11),
                       Center(child: Text(secondImgTitle, style: TextStyles.greyDarkRegularStyle.copyWith(fontSize: 14, color: ColorStyles.textHeader))),
                    ],),
                ),
              )
      ],);
  }
}