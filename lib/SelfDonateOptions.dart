import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:zero_hunger/SelfDonation.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:zero_hunger/main.dart';

class SelfDonationOptions extends StatefulWidget {
  const SelfDonationOptions({super.key});

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
          Icon(Icons.help),
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
                    fixedSize: Size(200, 50),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ElevatedButton(
            child: Text('Send Notification'),
            onPressed: () {
              flutterLocalNotificationsPlugin.show(
                0,
                "Testing",
                "Hello Bro",
                NotificationDetails(
                    android: AndroidNotificationDetails(
                        channel.id, channel.name, channel.description,
                        importance: Importance.high,
                        color: Colors.blue,
                        playSound: true,
                        icon: '@mipmap/ic_launcher')),
              );
            },
          ),
        ),
      ),
    );
  }
}
