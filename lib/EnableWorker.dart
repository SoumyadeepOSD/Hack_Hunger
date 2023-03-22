import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:zero_hunger/Constants/Jobs.dart';

import 'JobPage.dart';

class EnableWorkers extends StatefulWidget {
  const EnableWorkers({super.key});

  @override
  State<EnableWorkers> createState() => _EnableWorkersState();
}

class _EnableWorkersState extends State<EnableWorkers> {
  TextEditingController controller = TextEditingController();
  List<Job> jobs = allJobs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[600],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Active Jobs'),
            Icon(Icons.help),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Find Jobs",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
              ),
              onChanged: searchJob,
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: jobs.length,
            itemBuilder: ((context, index) {
              final job = jobs[index];

              return ListTile(
                leading: Image.network(
                  job.urlImage,
                  fit: BoxFit.cover,
                  width: 50,
                  height: 50,
                ),
                title: Text(
                  job.title,
                ),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => JobPage(job: job))),
              );
            }),
          )),
        ],
      ),
    );
  }

  void searchJob(String query) {
    final suggestions = allJobs.where((job) {
      final jobTitle = job.title.toLowerCase();
      final input = query.toLowerCase();

      return jobTitle.contains(input);
    }).toList();

    setState(() {
      jobs = suggestions;
    });
  }
}
