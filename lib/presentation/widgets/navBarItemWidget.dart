import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../core/textStyles_const.dart';

class NavBarItemWidget extends StatelessWidget {
  final String imgUrl;
  final String title;

  const NavBarItemWidget(
    this.imgUrl,
    this.title, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.only(top: 9),
      // color: brightness == Brightness.dark
      //     ? ColorStyles.darkthemePageBackgroundColor
      //     : Colors.white,
      width: MediaQuery.of(context).size.width / 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            imgUrl,
            height: 26.5,
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: TextStyles.greyDarkBoldStyle.copyWith(fontSize: 9.5),
          ),
        ],
      ),
    );
  }
}
