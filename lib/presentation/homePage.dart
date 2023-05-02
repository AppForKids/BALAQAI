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
  static final List<Widget> _widgetOptions = <Widget>[
    MainScreen(),
    FairyTalesPage(),
    MusicPage(),
    StudyScreen(),
    ProfileScreen(),
  ];

  int _selectedIndex = 0;
  
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      // body: MusicPlayer(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorStyles.appBarColor,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: NavBarItemWidget(
              'assets/icons/mainRectangle.svg',
              'Басты бет',
            ),
            label: '',
          
            ),
            BottomNavigationBarItem(
            icon: NavBarItemWidget(
              'assets/icons/mainRectangle.svg',
              'Ертегілер',
            ),
            label: '',
            ),
            BottomNavigationBarItem(
            icon: NavBarItemWidget(
              'assets/icons/mainRectangle.svg',
              'Әндер',
            ),
            label: '',
            ),
            BottomNavigationBarItem(
            icon: NavBarItemWidget(
              'assets/icons/mainRectangle.svg',
              'Оқу',
            ),
            label: '',
            ),
            BottomNavigationBarItem(
            icon: NavBarItemWidget(
              'assets/icons/profile.svg',
              'Профиль',
            ),
            label: '',
            ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}