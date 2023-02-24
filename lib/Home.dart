import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'Button.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Center(
            child: Text(
              'Hack Hunger',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.black,
                letterSpacing: 2,
              ),
            ),
          ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.amber[800],
          child: SafeArea(
              child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                child: ListTile(
                  dense: true,
                  title: Text(
                    "Home Page",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  leading: Icon(Icons.home),
                  onTap: () {
                    //action when this menu is pressed
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                child: ListTile(
                  dense: true,
                  title: Text(
                    "My Profile",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  leading: Icon(Icons.person),
                  onTap: () {
                    //action when this menu is pressed
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                child: ListTile(
                  dense: true,
                  title: Text(
                    "My Orders",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  leading: Icon(Icons.add_box),
                  onTap: () {
                    //action when this menu is pressed
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                child: ListTile(
                  dense: true,
                  title: Text(
                    "My Favourites",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  leading: Icon(Icons.monitor_heart),
                  onTap: () {
                    //action when this menu is pressed
                  },
                ),
              ),
            ],
          )),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 10, left: 5, right: 5),
          height: 1000,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[200],
          ),
          child: Column(
            children: [
              Center(
                child: ImageSlideshow(
                  width: 400,
                  height: 150,
                  children: [
                    Image.asset(
                      "assets/image1.png",
                      fit: BoxFit.fitHeight,
                      height: 50,
                    ),
                    Image.asset(
                      "assets/image2.png",
                      fit: BoxFit.fitHeight,
                      height: 50,
                    ),
                    Image.asset(
                      "assets/image3.jpg",
                      fit: BoxFit.fitHeight,
                      height: 50,
                    ),
                    Image.asset(
                      "assets/image4.jpg",
                      fit: BoxFit.fitHeight,
                      height: 50,
                    ),
                    Image.asset(
                      "assets/image5.jpg",
                      fit: BoxFit.fitHeight,
                      height: 50,
                    ),
                  ],
                  autoPlayInterval: 3000,
                  isLoop: true,
                ),
              ),
              Container(padding: EdgeInsets.only(bottom: 50)),
              Text(
                "Our small donation can improve",
                style: TextStyle(
                  overflow: null,
                  fontFamily: 'lorem Lipsum',
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent[700],
                  fontSize: 25,
                ),
              ),
              Text(
                "other's lives",
                style: TextStyle(
                  overflow: null,
                  fontFamily: 'lorem Lipsum',
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent[700],
                  fontSize: 25,
                ),
              ),
              MyButton(text: 'Self-Donation'),
              MyButton(text: 'Donate to NGO'),
            ],
          ),
        ),
      ),
    );
  }
}
