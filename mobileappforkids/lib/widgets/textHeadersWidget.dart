import 'package:flutter/material.dart';

class textHeadersWidget extends StatelessWidget {
  final String title;
  const textHeadersWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0, top: 16, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(30, 30, 30, 1))),
          Text('Барлығы',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(56, 184, 224, 1))),
        ],
      ),
    );
  }
}
