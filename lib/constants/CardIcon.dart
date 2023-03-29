import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:zero_hunger/Connect_Resturants.dart';
import 'package:zero_hunger/EnableWorker.dart';
import 'package:zero_hunger/GovtScheme.dart';
import 'package:zero_hunger/IntermediatePage.dart';
import 'package:zero_hunger/NgoDonation.dart';
import 'package:zero_hunger/Searching_Options/SearchPage.dart';
import 'package:zero_hunger/SelfDonateOptions.dart';
import 'package:zero_hunger/SelfDonation.dart';
import 'package:zero_hunger/VendorPage.dart';
import 'package:zero_hunger/ViewData.dart';
import 'package:zero_hunger/WorldSituation.dart';

class CardIcon extends StatelessWidget {
  String text;
  int flag;

  Icon selfD = Icon(Icons.swipe_left_outlined, color: Colors.blue, size: 22.0);
  Icon ngoD = Icon(Icons.domain_outlined, color: Colors.red, size: 22.0);
  Icon pastD = Icon(Icons.history, color: Colors.amber[800], size: 22.0);
  Icon worldS = Icon(Icons.webhook_rounded, color: Colors.green, size: 22.0);

  Icon govtS = Icon(Icons.other_houses_rounded,
      color: Colors.purpleAccent[300], size: 22.0);
  Icon charityD =
      Icon(Icons.domain_add_outlined, color: Colors.lightBlue[900], size: 22.0);
  Icon workS = Icon(Icons.work_history_sharp,
      color: Colors.orangeAccent[500], size: 22.0);
  Icon buyS =
      Icon(Icons.attach_money_rounded, color: Colors.brown[400], size: 22.0);

  CardIcon({super.key, required this.text, required this.flag});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blue[200],
          ),
          child: IconButton(
            onPressed: () {
              flag == 1
                  ? (Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SelfDonationOptions()),
                    ))
                  : flag == 2
                      ? (Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => InterPage()),
                        ))
                      : flag == 3
                          ? (Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ViewData()),
                            ))
                          : flag == 4
                              ? (Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => WorldSituation()),
                                ))
                              : flag == 5
                                  ? (Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => GovtScheme()),
                                    ))
                                  : flag == 6
                                      ? (Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Connect_Resturant()),
                                        ))
                                      : flag == 7
                                          ? (Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      EnableWorkers()),
                                            ))
                                          : (Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      VendorPage()),
                                            ));
            },
            icon: flag == 1
                ? selfD
                : flag == 2
                    ? ngoD
                    : flag == 3
                        ? pastD
                        : flag == 4
                            ? worldS
                            : flag == 5
                                ? govtS
                                : flag == 6
                                    ? charityD
                                    : flag == 7
                                        ? workS
                                        : buyS,
          ),
        ),
        Center(
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
