import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:zero_hunger/widgets/GovtCard.dart';
import 'package:pie_chart/pie_chart.dart';
import 'widgets/CustomCard.dart';

class WorldSituation extends StatelessWidget {
  WorldSituation({super.key});
  int index = 0;
  Map<String, double> dataMap = {
    "DRC": 26,
    "Afghanistan": 19.9,
    "Yemen": 4.25,
    "Cosmetics": 17,
    "Syria": 12,
    "Sahel": 13,
    "South Sudan": 7.7,
    "Sudan": 15.8,
    "Somalia": 6,
    "Northern Ethiopia": 5.5,
    " Haiti": 4.7,
    "India": 2.5
  };

  List<Color> colorList = [
    const Color(0xFFE0ADEB),
    const Color(0xff3EE094),
    const Color(0xff3398F6),
    const Color(0xffFA4A42),
    const Color(0xffFE9539),
    Color.fromARGB(255, 255, 0, 144),
    const Color(0xFF075202),
    const Color(0xff3398F6),
    const Color(0xA0FF02EE),
    const Color(0xFFFF4400),
    const Color(0xFF03960A),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepPurple[800],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Current Situation'),
              Icon(Icons.help),
            ],
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageSlideshow(
              width: 450,
              height: 150,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Image.asset(
                    "assets/images/hunger1.jpg",
                    fit: BoxFit.fill,
                    height: 50,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Image.asset(
                    "assets/images/hunger2.jpg",
                    fit: BoxFit.fill,
                    height: 50,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Image.asset(
                    "assets/images/hunger3.png",
                    fit: BoxFit.fill,
                    height: 50,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Image.asset(
                    "assets/images/hunger4.jpg",
                    fit: BoxFit.fill,
                    height: 50,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Image.asset(
                    "assets/images/hunger5.jpg",
                    fit: BoxFit.fill,
                    height: 50,
                  ),
                ),
              ],
              autoPlayInterval: 3000,
              isLoop: true,
            ),
            SizedBox(
              height: 5,
            ),
            PieChart(
              dataMap: dataMap,
              colorList: colorList,
              chartRadius: MediaQuery.of(context).size.width / 2,
              centerText: "Hunger",
              animationDuration: Duration(seconds: 3),
              chartValuesOptions: ChartValuesOptions(
                  showChartValues: true,
                  showChartValuesOutside: true,
                  showChartValuesInPercentage: true,
                  showChartValueBackground: false),
              legendOptions: LegendOptions(
                showLegends: true,
                legendShape: BoxShape.rectangle,
                legendTextStyle: TextStyle(fontSize: 20),
                legendPosition: LegendPosition.bottom,
                showLegendsInRow: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
