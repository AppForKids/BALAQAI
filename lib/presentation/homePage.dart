import 'package:application/presentation/profile/profileScreen.dart';
import 'package:application/presentation/study/studyScreen.dart';
import 'package:application/presentation/widgets/musicPlayer.dart';
import 'package:application/presentation/widgets/navBarItemWidget.dart';
import 'package:flutter/material.dart';

import '../core/colorStyles_const.dart';
import 'fairyTales/screen/fairyTales.dart';
import 'mainPage/mainScreen.dart';
import 'music/screen/musicScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    MainScreen(),
    FairyTalesPage(),
    MusicPage(),
    StudyScreen(),
    ProfileScreen(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      // body: MusicPlayer(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorStyles.appBarColor,
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle: const TextStyle(color: Colors.white),
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        selectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                height: 24,
                'assets/icons/home.png',
                color: Colors.white,
              ),
              activeIcon: Image.asset(
                height: 24,
                'assets/icons/home2.png',
                color: Colors.white,
              ),
              label: 'Басты бет'),
          BottomNavigationBarItem(
              icon: Image.asset(
                height: 25,
                'assets/icons/star.png',
                color: Colors.white,
              ),
              activeIcon: Image.asset(
                height: 25,
                'assets/icons/magic.png',
                color: Colors.white,
              ),
              label: 'Ертегілер'),
          BottomNavigationBarItem(
              icon: Image.asset(
                height: 25,
                'assets/icons/music.png',
                color: Colors.white,
              ),
              activeIcon: Image.asset(
                height: 25,
                'assets/icons/mus.png',
                color: Colors.white,
              ),
              label: 'Әндер'),
          BottomNavigationBarItem(
              icon: Image.asset(
                height: 25,
                'assets/icons/graduated.png',
                color: Colors.white,
              ),
              activeIcon: Image.asset(
                height: 25,
                'assets/icons/grad.png',
                color: Colors.white,
              ),
              label: 'Оқу'),
          BottomNavigationBarItem(
              icon: Image.asset(
                height: 21,
                'assets/icons/use.png',
                color: Colors.white,
              ),
              activeIcon: Image.asset(
                height: 21,
                'assets/icons/user.png',
                color: Colors.white,
              ),
              label: 'Профиль')
        ],
      ),
    );
  }
}
