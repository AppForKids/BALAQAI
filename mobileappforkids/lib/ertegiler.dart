import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class ertegiler extends StatefulWidget {
  const ertegiler({super.key});

  @override
  State<ertegiler> createState() => _ertegilerState();
}

class _ertegilerState extends State<ertegiler> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Ертегілер"),
      ),
      body: new Center(
        child: new Text("ertegiler"),
      ),
    );
  }
}
