import 'package:flutter/material.dart';

import '../../core/colorStyles_const.dart';
import '../../core/textStyles_const.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: ColorStyles.appBarColor,
        centerTitle: true,
        title: Text("Профиль", style: TextStyles.greyDarkMediumStyle.copyWith(fontSize: 28),),
      ),
      body: Column(
        children: [
          const SizedBox(height: 42,),
          const Center(
            child: CircleAvatar(
             backgroundImage: AssetImage('assets/images/Abay.jpg'),
             radius: 60,
            ),
          ),
          const SizedBox(height: 19),
          Text('Абай', style: TextStyles.greyDarkBoldStyle.copyWith(fontSize: 20, color: ColorStyles.blackColor),),
          Padding(
              padding: const EdgeInsets.fromLTRB(21, 34, 28, 17),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(width: 2, color: Colors.grey)),
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "Сүйікті ертегілер",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Color.fromRGBO(30, 30, 30, 1),
                      ),
                    ),
                    VerticalDivider(
                      color: Color.fromRGBO(159, 174, 179, 1),
                      thickness: 2,
                    ),
                    Text(
                      "Тапсырмалар",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Color.fromRGBO(30, 30, 30, 1),
                      ),
                    )
                  ],
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.fromLTRB(94,19,94,20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 2, color: ColorStyles.redColor),
              ),
              child: Text('Жобаны қолдау', style: TextStyles.greyDarkRegularStyle.copyWith(color: ColorStyles.redColor, fontSize: 20)),
            )

        ],
      ),
    );
  }
}