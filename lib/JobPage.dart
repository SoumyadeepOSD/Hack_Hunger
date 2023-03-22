import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:zero_hunger/JobForm.dart';

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
            Text(
              job.title,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 25),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('Location: ${job.location}',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w500,
                              fontSize: 20)),
                    ),
                    Text('Salary: ${job.salary}k',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: 20)),
                  ],
                ),
              ],
            ),
            Text(
              'Description',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Colors.indigoAccent,
              ),
            ),
            Text(
              job.desc,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 15,
                fontFamily: 'poppins',
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    padding: EdgeInsets.only(
                      left: 50,
                      right: 50,
                    )),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => JobForm()),
                  );
                },
                child: Text(
                  'Apply Now',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ))
          ],
        ),
      ),
    );
  }
}
