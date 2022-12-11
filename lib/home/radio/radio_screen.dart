import 'package:flutter/material.dart';
import 'package:islami_c7_friday/my_theme.dart';

class RadioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: height * 0.2,
        ),
        Image.asset(
          'assets/images/radioquran.png',
        ),
        Text('اذاعه القرأن الكريم',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.skip_previous_outlined,
                color: MyThemeData.colorGold,
                size: 50,
              ),
              SizedBox(
                width: 35,
              ),
              Icon(
                Icons.play_arrow,
                color: MyThemeData.colorGold,
                size: 60,
              ),
              SizedBox(
                width: 35,
              ),
              Icon(
                Icons.skip_next_outlined,
                color: MyThemeData.colorGold,
                size: 50,
              ),
            ],
          ),
        )
      ],
    );
  }
}
