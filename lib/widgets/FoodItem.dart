import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FoodItem extends StatelessWidget {
  String name;
  String fat;
  String acid;
  String cal;
  String protine;
  String water;
  String sugar;
  String url;

  FoodItem({
    super.key,
    required this.name,
    required this.fat,
    required this.acid,
    required this.cal,
    required this.protine,
    required this.water,
    required this.sugar,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      width: 400,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(url),
            backgroundColor: Colors.amber,
            radius: 15,
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w300,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Fat: ${fat}",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                "Acid: ${acid}",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Protine: ${protine}",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                "Calorie: ${cal}",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Water: ${water}",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                "Sugar:${sugar}",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue[200],
      ),
    );
  }
}
