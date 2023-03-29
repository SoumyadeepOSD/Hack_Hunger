import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:zero_hunger/SelfDonateOptions.dart';

import 'DialogFlow.dart';

class SocialPosts extends StatefulWidget {
  const SocialPosts({super.key});

  @override
  State<SocialPosts> createState() => _SocialPostsState();
}

class _SocialPostsState extends State<SocialPosts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[800],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Other's Donation"),
            InkWell(
              child: Icon(Icons.help),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DialogFlow()),
                );
              },
            ),
          ],
        ),
      ),
      body: StreamBuilder(
        stream: readPosts(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('Something Went wrong${snapshot.error}');
          } else if (snapshot.hasData) {
            final posts = snapshot.data!;
            return ListView(
              children: posts.map(buildPost).toList(),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

Widget buildPost(Post post) {
  var val = post.date;
  String loc = post.loc;

  return Container(
    height: 200,
    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
    decoration: BoxDecoration(
      color: Colors.blue[200],
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
    child: ListTile(
      title: Text(
        post.subject,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
      ),
      subtitle: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            post.subject,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: Colors.grey.shade900,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Date: ${post.date}",
                style: TextStyle(
                    color: val == '0' ? Colors.red : Colors.green,
                    fontSize: 20),
              ),
              Text("Location: ${loc.split(',')[0].toString()}")
            ],
          ),
        ],
      ),
    ),
  );
}
