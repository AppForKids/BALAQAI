import 'package:flutter/material.dart';

import '../../core/colorStyles_const.dart';
import '../../core/textStyles_const.dart';
import 'containerPictureWidget.dart';
import 'musicPlayer.dart';

class BarlygyPage extends StatefulWidget {
  final String title;
  final List images;
  final List names;
  const BarlygyPage(
      {super.key,
      required this.title,
      required this.images,
      required this.names});

  @override
  State<BarlygyPage> createState() => _BarlygyPageState();
}

class _BarlygyPageState extends State<BarlygyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorStyles.appBarColor,
        title: Text(
          widget.title,
          style: TextStyles.greyDarkMediumStyle.copyWith(fontSize: 28),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 330,
                childAspectRatio: 1.2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: widget.images.length,
            itemBuilder: (BuildContext ctx, index) {
              return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const MusicPlayer())));
                  },
                  child: ContainerPictureWidget(
                    imgUrl: widget.images[index],
                    title: widget.names[index],
                  ));
            }),
      ),
    );
  }
}
