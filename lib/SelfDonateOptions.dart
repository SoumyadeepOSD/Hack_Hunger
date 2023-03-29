import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:zero_hunger/JobForm.dart';
import 'package:zero_hunger/SelfDonation.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:zero_hunger/ViewData.dart';
import 'package:zero_hunger/main.dart';

import 'DialogFlow.dart';
import 'widgets/TextWidget.dart';

class SelfDonationOptions extends StatefulWidget {
  SelfDonationOptions({super.key});

  @override
  State<SelfDonationOptions> createState() => _SelfDonationOptionsState();
}

class _SelfDonationOptionsState extends State<SelfDonationOptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text('Self Donation'),
          InkWell(
            child: Icon(Icons.help),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DialogFlow()),
              );
            },
          ),
        ]),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(200, 50),
                    backgroundColor: Colors.deepPurple),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Messaging()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                    Text('Riase awareness')
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 50),
                    backgroundColor: Colors.deepPurple),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SelfDonation()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.view_in_ar_outlined,
                      color: Colors.white,
                    ),
                    Text('Your Contribution')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Messaging extends StatefulWidget {
  const Messaging({super.key});

  @override
  State<Messaging> createState() => _MessagingState();
}

class _MessagingState extends State<Messaging> {
  TextEditingController controllerSubject = TextEditingController();
  TextEditingController controllerDescription = TextEditingController();
  TextEditingController controllerDate = TextEditingController();
  TextEditingController controllerLoc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[800],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text("Aware everyone"), Icon(Icons.help)],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: buildTextField(
                title: "Enter Subject",
                controller: controllerSubject,
                hint: "Subject of post",
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: buildTextField(
                title: "Enter Description",
                controller: controllerDescription,
                hint: "Description of post",
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: buildTextField(
                title: "Enter Event Date",
                controller: controllerDate,
                hint: "Date of event",
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: buildTextField(
                title: "Enter Location",
                controller: controllerLoc,
                hint: "Location of event",
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              child: Text('Send Notification'),
              onPressed: () {
                flutterLocalNotificationsPlugin.show(
                  0,
                  "Let's check it out new donation",
                  "A new people has posted a new post",
                  NotificationDetails(
                      android: AndroidNotificationDetails(
                          channel.id, channel.name, channel.description,
                          importance: Importance.high,
                          color: Colors.blue,
                          playSound: true,
                          icon: '@mipmap/ic_launcher')),
                );

                final post = Post(
                  subject: controllerSubject.text,
                  description: controllerDescription.text,
                  date: controllerDate.text,
                  loc: controllerLoc.text,
                );
                createPost(post);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ViewData()),
                );
              },
            ),
          ]),
        ),
      ),
    );
  }
}

Stream<List<Post>> readPosts() =>
    FirebaseFirestore.instance.collection('posts').snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => Post.fromJson(doc.data())).toList());

Future createPost(Post post) async {
  final docUser = FirebaseFirestore.instance.collection('posts').doc();
  post.id = docUser.id;

  final json = post.toJson();
  await docUser.set(json);
}

class Post {
  String id;
  final String subject;
  final String description;
  final String date;
  final String loc;

  Post({
    this.id = '',
    required this.subject,
    required this.description,
    required this.date,
    required this.loc,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'subject': subject,
        'description': description,
        'date': date,
        'loc': loc,
      };

  static Post fromJson(Map<String, dynamic> json) => Post(
        id: json['id'],
        subject: json['subject'],
        description: json['description'],
        date: json['date'],
        loc: json['loc'],
      );
}
