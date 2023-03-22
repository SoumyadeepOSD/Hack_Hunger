import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:zero_hunger/NgoDonation.dart';
import 'package:zero_hunger/PhoneNumber.dart';

class InterPage extends StatelessWidget {
  const InterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[800],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text('Donate to NGO'), Icon(Icons.help)],
        ),
      ),
      body: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Container(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(24))),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NgoDonation(),
                          ));
                    },
                    child: Text(
                      'Form a Email',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(24))),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PhoneNumber(),
                          ));
                    },
                    child: Text(
                      'Call to NGO',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
