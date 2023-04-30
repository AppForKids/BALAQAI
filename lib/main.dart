import 'package:flutter/material.dart';
import 'package:mobileappforkids/books.dart';
import 'package:mobileappforkids/HomePage.dart';
import 'package:mobileappforkids/Profile.dart';
import 'package:mobileappforkids/Songs.dart';
import 'package:mobileappforkids/ertegiler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    ertegiler(),
    Songs(),
    Books(),
    Profile(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        unselectedLabelStyle: const TextStyle(color: Colors.white),
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        selectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                height: 25,
                'assets/icons/user.png',
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
