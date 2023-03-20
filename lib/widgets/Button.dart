import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:zero_hunger/Home.dart';
import 'package:zero_hunger/SelfDonation.dart';
import 'package:zero_hunger/IntermediatePage.dart';
import 'package:zero_hunger/NgoDonation.dart';

import '../TabPage/More.dart';

class MyButton extends StatelessWidget {
  String text;

  double height;
  MyButton({required this.text, required this.height});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (text == "Self-Donation") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SelfDonation()),
          );
        } else if (text == "Go to Home") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => InterPage()),
          );
        }
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10, top: 15),
        height: height,
        width: 300,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          color: Colors.blue[100],
          borderRadius: BorderRadius.all(
            Radius.circular(24),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'lauren',
              color: Colors.black,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
