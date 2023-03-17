import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:zero_hunger/widgets/GovtCard.dart';

import 'widgets/CustomCard.dart';

class WorldSituation extends StatelessWidget {
  const WorldSituation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Current Situation'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyCard(name: "Indian Government Initiative for remove Hunger"),
            GovtCard(
              name: "National Nutrition Mission",
              url: "https://www.india.gov.in/national-nutrition-mission",
            ),
            GovtCard(
              name: "National Food Security ",
              url: "https://nfsa.gov.in/",
            ),
            GovtCard(
              name: "National Nutrition Mission",
              url: "https://www.india.gov.in/national-nutrition-mission",
            ),
            GovtCard(
              name: "Zero Hunger",
              url: "https://www.wfp.org/countries/india",
            ),
            GovtCard(
              name: "Eat Right India ",
              url:
                  "https://eatrightindia.gov.in/eatrightindia.jsp#:~:text=Therefore%2C%20FSSAI%20has%20embarked%20on,the%20foundation%20of%20this%20movement",
            ),
            GovtCard(
              name: "Mid-day Meal",
              url: "https://pmposhan.education.gov.in/",
            ),
            GovtCard(
              name: "Annapurna Yojana",
              url:
                  "https://www.oldagesolutions.org/hi/%E0%A4%85%E0%A4%A8%E0%A5%8D%E0%A4%A8%E0%A4%AA%E0%A5%82%E0%A4%B0%E0%A5%8D%E0%A4%A3%E0%A4%BE-%E0%A4%AF%E0%A5%8B%E0%A4%9C%E0%A4%A8%E0%A4%BE/",
            )
          ],
        ),
      ),
    );
  }
}
