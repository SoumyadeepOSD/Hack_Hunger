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
        title: Text('Donate to NGO'),
      ),
      body: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Container(
          child: Center(
            child: Column(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NgoDonation(),
                        ));
                  },
                  child: Text('Form a Email'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PhoneNumber(),
                        ));
                  },
                  child: Text('Call to NGO'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
