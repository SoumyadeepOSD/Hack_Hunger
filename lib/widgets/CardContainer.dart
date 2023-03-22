import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:zero_hunger/Harvest.dart';
import '../Constants/CardIcon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardContainer__First extends StatelessWidget {
  const CardContainer__First({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.deepPurple[800],
      ),
      height: 120,
      width: 500,
      margin: EdgeInsets.only(left: 5, right: 5, top: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 5,
          ),
          Text(
            'Remove Hunger',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                fontFamily: 'Poppins',
                color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardIcon(
                text: "\t\t\t\tSelf\nDonation",
                flag: 1,
              ),
              CardIcon(
                text: "Donate\nto NGO",
                flag: 2,
              ),
              CardIcon(
                text: "\t\t\t\tPast\nDonation",
                flag: 3,
              ),
              CardIcon(
                text: "\t\t\tWorld\nSituation",
                flag: 4,
              )
            ],
          )
        ],
      ),
    );
  }
}

class CardContainer__Second extends StatelessWidget {
  const CardContainer__Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.deepPurple[800],
      ),
      height: 130,
      width: 500,
      margin: EdgeInsets.only(left: 5, right: 5, top: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Second Phase',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                fontFamily: 'Poppins',
                color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardIcon(
                text: "\t\t\t\t\tGovt.\n\t\tSchemes",
                flag: 5,
              ),
              CardIcon(
                text: "\t\tEnable\n\tWorkers",
                flag: 7,
              ),
              CardIcon(
                text: "\t\tSupport\n\t\tVendors",
                flag: 8,
              ),
              CardIcon(
                text: "\t\tConnect\nResturants",
                flag: 6,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Empty__CardContainer extends StatelessWidget {
  const Empty__CardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.deepPurple[800],
      ),
      height: 170,
      width: 500,
      margin: EdgeInsets.only(left: 5, right: 5, top: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 5,
          ),
          Text(
            'Solve Major Problem',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                fontFamily: 'Poppins',
                color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  print('Harvest more');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Harvest()),
                  );
                },
                child: Container(
                  height: 120,
                  width: 180,
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.blue[500],
                    shadowColor: Colors.black,
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/images/crops.png'),
                          height: 70,
                          width: 70,
                        ),
                        Text(
                          'Harvest More',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w800,
                              color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
