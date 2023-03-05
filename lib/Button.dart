import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:zero_hunger/FinalPage.dart';
import 'package:zero_hunger/NgoDonation.dart';
import 'package:zero_hunger/SelfDonation.dart';
import 'package:zero_hunger/TabPage/ChatScreen.dart';

import 'TabPage/More.dart';

class MyButton extends StatelessWidget {
  String text;
  MyButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        text == "Self-Donation"
            ? Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FinalPage()),
              )
            : Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NgoDonation()),
              );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10, top: 15),
        height: 100,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.blue[400],
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
