import 'package:flutter/material.dart';

import '../../my_theme.dart';

class SebhaScreen extends StatefulWidget {
  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int counter = 0;
  List<String> countertasbeeh = [
    "سبحان الله",
    "الحمد لله",
    "الله اكبر",
  ];
  int tasbeeh = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
                padding: EdgeInsets.symmetric(vertical: 30),
                margin: EdgeInsets.all(50),
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/sebhabody.png',
                )),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 40),
              child: Image.asset(
                'assets/images/sebhahead.png',
              ),
            ),
          ],
        ),
        Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: MyThemeData.colorGold),
            child: Text(
              '$counter',
              style: TextStyle(fontSize: 30),
            )),
        SizedBox(
          height: 12,
        ),
        Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: MyThemeData.colorGold),
            child: InkWell(
              onTap: () => setState(() {
                if (counter == 33) {
                  counter = 0;
                  if (tasbeeh == countertasbeeh.length - 1) {
                    tasbeeh = 0;
                  } else
                    tasbeeh++;
                } else
                  counter++;
              }),
              child: Text(
                '${countertasbeeh[tasbeeh]}',
                style: TextStyle(fontSize: 30),
              ),
            )),
      ],
    );
  }
}
