import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class JobPage extends StatelessWidget {
  var job;

  JobPage({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your job'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.network(
              job.urlImage,
              width: double.infinity,
              height: 300,
              fit: BoxFit.fitHeight,
            ),
            Text('Location ${job.location}'),
            Text('Salary ${job.salary}'),
          ],
        ),
      ),
    );
  }
}
