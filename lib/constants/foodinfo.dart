// import 'dart:core';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

// class FoodInfo extends StatefulWidget {
//   const FoodInfo({super.key});

//   @override
//   State<FoodInfo> createState() => _FoodInfoState();
// }

// class _FoodInfoState extends State<FoodInfo> {
//   List<Food> foods = getFoods();
//   static List<Food> getFoods() {
//     const data = [
//       {
//         "id": 1,
//         "name": "Apple",
//         "acid": 28.8,
//         "cal": 45.3,
//         "water": 40.6,
//         "sugar": 19.7,
//         "protine": 34.67,
//         "fat": 2.55,
//         "url":
//             "https://vignette.wikia.nocookie.net/fruits-information/images/2/2b/Apple.jpg/revision/latest?cb=20180802112257"
//       },
//       {
//         "id": 2,
//         "name": "Banana",
//         "acid": 28.8,
//         "cal": 45.3,
//         "water": 40.6,
//         "sugar": 19.7,
//         "protine": 34.67,
//         "fat": 3.06,
//         "url":
//             "https://vignette.wikia.nocookie.net/fruits-information/images/2/2b/Apple.jpg/revision/latest?cb=20180802112257"
//       },
//       {
//         "id": 3,
//         "name": "guava",
//         "acid": 28.8,
//         "cal": 45.3,
//         "water": 40.6,
//         "sugar": 19.7,
//         "protine": 34.67,
//         "fat": 4.9,
//         "url":
//             "https://vignette.wikia.nocookie.net/fruits-information/images/2/2b/Apple.jpg/revision/latest?cb=20180802112257"
//       }
//     ];
//     return data.map<Food>(Food.fromJson).toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: buildFoods(foods),
//       ),
//     );
//   }
// }

// Widget buildFoods(List<Food> foods) => ListView.builder(
//       itemCount: 3,
//       itemBuilder: (context, index) {
//         final food = foods[index];
//         return Container(
//           height: 70,
//           width: 150,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Text(
//                 food.name,
//                 style: TextStyle(
//                   fontSize: 22,
//                   fontWeight: FontWeight.w300,
//                 ),
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Fat: ${food.fat}",
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w900,
//                     ),
//                   ),
//                   Text(
//                     "Acid: ${food.acid}",
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w900,
//                     ),
//                   ),
//                 ],
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Protine: ${food.protine}",
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w900,
//                     ),
//                   ),
//                   Text(
//                     "Calorie: ${food.cal}",
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w900,
//                     ),
//                   ),
//                 ],
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Water: ${food.water}",
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w900,
//                     ),
//                   ),
//                   Text(
//                     "Sugar:${food.sugar}",
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w900,
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             color: Colors.blue[200],
//           ),
//         );
//       },
//     );

// class Food {
//   final String name;
//   final double fat;
//   final double acid;
//   final double cal;
//   final double water;
//   final double sugar;
//   final double protine;
//   final String url;

//   const Food(
//       {required this.name,
//       required this.fat,
//       required this.url,
//       required this.acid,
//       required this.cal,
//       required this.protine,
//       required this.water,
//       required this.sugar});

//   static Food fromJson(json) => Food(
//         name: json['name'],
//         fat: json['fat'],
//         acid: json['acid'],
//         protine: json['protine'],
//         water: json['water'],
//         sugar: json['sugar'],
//         cal: json['cal'],
//         url: json['url'],
//       );
// }
