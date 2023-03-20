import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyCard extends StatelessWidget {
  String name;

  MyCard({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 10),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.deepOrange, Colors.green, Colors.white]),
          borderRadius:
              BorderRadius.only(bottomLeft: Radius.elliptical(10, 11))),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 10),
        child: Text(
          name,
          style: TextStyle(
              color: Colors.indigo[900],
              fontSize: 24,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
