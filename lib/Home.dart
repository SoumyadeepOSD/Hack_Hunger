import 'package:flutter/material.dart';
import 'package:zero_hunger/DialogFlow.dart';
import 'widgets/ImageSlider.dart';
import 'widgets/CardContainer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

final navigatorKey = GlobalKey<NavigatorState>();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.deepPurple[800],
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.account_circle_rounded,
                      ),
                    ),
                    TextButton(
                        child: Text(
                          "Location",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              fontFamily: "Poppins"),
                        ),
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.white)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notifications),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DialogFlow()),
                        );
                      },
                      icon: Icon(Icons.help),
                    )
                  ],
                ),
              ],
            )),
        body: Container(
          height: 600,
          child: Column(
            children: [
              Center(child: ImageSlider()),
              CardContainer__First(),
              CardContainer__Second(),
              Empty__CardContainer()
            ],
          ),
        ),
      ),
    );
  }
}


// drawer: Drawer(
        //   backgroundColor: Colors.purple[900],
        //   child: SafeArea(
        //       child: Column(
        //     children: [
        //       SizedBox(
        //         height: 40,
        //       ),
        //       Padding(
        //         padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
        //         child: ListTile(
        //           dense: true,
        //           title: Text(
        //             "Home Page",
        //             style: TextStyle(
        //               color: Colors.white,
        //               fontSize: 20,
        //               fontWeight: FontWeight.w600,
        //             ),
        //           ),
        //           leading: Icon(
        //             Icons.home,
        //             color: Colors.white60,
        //           ),
        //           onTap: () {
        //             //action when this menu is pressed
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => HomePage()),
                    // // );
        //           },
        //         ),
        //       ),
        //       Padding(
        //         padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
        //         child: ListTile(
        //           dense: true,
        //           title: Text(
        //             "World Situation",
        //             style: TextStyle(
        //               color: Colors.white,
        //               fontSize: 20,
        //               fontWeight: FontWeight.w600,
        //             ),
        //           ),
        //           leading: Icon(
        //             Icons.balcony_outlined,
        //             color: Colors.white60,
        //           ),
        //           onTap: () {
        //             //action when this menu is pressed
        //             Navigator.push(
        //               context,
        //               MaterialPageRoute(builder: (context) => WorldSituation()),
        //             );
        //           },
        //         ),
        //       ),
        //       Padding(
        //         padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
        //         child: ListTile(
        //           dense: true,
        //           title: Text(
        //             "Health Care",
        //             style: TextStyle(
        //               fontSize: 20,
        //               color: Colors.white,
        //               fontWeight: FontWeight.w600,
        //             ),
        //           ),
        //           leading: Icon(
        //             Icons.add_box,
        //             color: Colors.white60,
        //           ),
        //           onTap: () {
        //             //action when this menu is pressed
        //             Navigator.push(
        //               context,
        //               MaterialPageRoute(builder: (context) => HealthCare()),
        //             );
        //           },
        //         ),
        //       ),
        //       Padding(
        //         padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
        //         child: ListTile(
        //           dense: true,
        //           title: Text(
        //             "Past Donation",
        //             style: TextStyle(
        //               color: Colors.white,
        //               fontSize: 20,
        //               fontWeight: FontWeight.w600,
        //             ),
        //           ),
        //           leading: Icon(
        //             Icons.monitor_heart,
        //             color: Colors.white60,
        //           ),
        //           onTap: () {
        //             //action when this menu is pressed
        //             Navigator.push(
        //               context,
        //               MaterialPageRoute(builder: (context) => ViewData()),
        //             );
        //           },
        //         ),
        //       ),
        //       Padding(
        //         padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
        //         child: ListTile(
        //           dense: true,
        //           title: Text(
        //             "Help & Support",
        //             style: TextStyle(
        //               color: Colors.white,
        //               fontSize: 20,
        //               fontWeight: FontWeight.w600,
        //             ),
        //           ),
        //           leading: Icon(
        //             Icons.contact_support_sharp,
        //             color: Colors.white60,
        //           ),
        //           onTap: () {
        //             //action when this menu is pressed
        //             Navigator.push(
        //               context,
        //               MaterialPageRoute(builder: (context) => HelpSupport()),
        //             );
        //           },
        //         ),
        //       ),
        //     ],
        //   )),
        // ),