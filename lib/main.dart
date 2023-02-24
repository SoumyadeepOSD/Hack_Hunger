import 'dart:async';

import 'package:flutter/material.dart';

import 'Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen());
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  String text1 = "Hack";

  String text2 = "Hunger";

  String version = "V 1.0.0";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(seconds: 5),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: 1000,
          width: 1000,
          padding: EdgeInsets.fromLTRB(50, 250, 50, 100),
          child: Center(
            child: Column(
              children: [
                Text(
                  text1,
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 30,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  text2,
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 30,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 200),
                  child: Text(
                    version,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.purple, Colors.blue]),
          ),
        ),
      ),
    );
  }
}
